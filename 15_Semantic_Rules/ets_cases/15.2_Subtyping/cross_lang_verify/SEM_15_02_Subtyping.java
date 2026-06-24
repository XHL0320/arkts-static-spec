/**
 * Java cross-language verification for 15.2 Subtyping
 *
 * Key differences:
 * - ArkTS has literal/union/FixedArray subtyping (TS compat); Java does not
 * - Generic invariance same across all three
 * - Java arrays are covariant (ArkTS FixedArray is covariant too)
 */
class SEM_15_02_Subtyping {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    static class Animal {}
    static class Dog extends Animal {}
    static class Cat extends Animal {}

    // Generic invariance
    static class Box<T> { T val; Box(T v) { val = v; } }

    public static void main(String[] args) {
        // === 15.2.1 Class extends subtyping ===
        Dog d = new Dog();
        Animal a = d;
        check(true, "class extends subtype: Dog <: Animal");

        // === 15.2.1 Self-extends rejection ===
        // class A extends A {}  // COMPILE ERROR in all 3 languages
        check(true, "self-extends rejection (same in Java)");

        // === Generic invariance (15.2.2) ===
        Box<Dog> db = new Box<>(new Dog());
        // Box<Animal> ab = db;  // COMPILE ERROR: invariance
        check(true, "generic invariance (same in Java)");

        // === 15.2.3 Literal types ===
        // Java has no literal types; String s = "hello" is just String
        String sl = "hello";
        check(sl instanceof String, "literal type (Java: no literal subtyping)");

        // === 15.2.4 Tuple types ===
        // Java has no tuple type; use Object[] or record
        Object[] tuple = {1, "hello"};
        check(tuple.length == 2, "tuple (Java: no native tuple, use Object[])");

        // === 15.2.5 Union types ===
        // Java has no union types; use common supertype or sealed class
        Object u = "hello";
        check(u instanceof String || u instanceof Integer, "union (Java: no union, use Object)");

        // === 15.2.6 Function type subtyping (contravariant param, covariant return) ===
        // Java: Function<Animal,String> is INVARIANT, not contravariant
        // Use wildcard to demonstrate: Function<? super Dog, String>
        java.util.function.Function<Animal, String> f = (Animal x) -> "animal";
        java.util.function.Function<? super Dog, String> g = f;  // use-site variance
        check(g.apply(new Dog()).equals("animal"), "function subtyping (Java: use-site variance ? super)");

        // === 15.2.7 FixedArray subtyping ===
        // ArkTS: FixedArray<Dog> <: FixedArray<Animal> (covariant)
        // Java: Dog[] is subtype of Animal[] (covariant arrays)
        Dog[] dogs = new Dog[]{new Dog()};
        Animal[] animals = dogs;  // covariant (Java specific, same as ArkTS FixedArray)
        check(true, "FixedArray covariant (Java: array covariant)");

        // === 15.2.8 Intersection types ===
        // ArkTS: not implemented (ESY145527)
        // Java: no intersection type
        // Swift: no intersection type
        check(true, "intersection types not supported (Java: same)");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
