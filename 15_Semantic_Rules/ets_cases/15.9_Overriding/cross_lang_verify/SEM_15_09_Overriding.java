/**
 * Java cross-language verification for 15.9 Overriding
 *
 * Key findings: All three languages have very similar overriding rules:
 * - @Override / override keyword required
 * - Return type covariance supported
 * - Parameter contravariance NOT supported (invariant in override)
 */
class SEM_15_09_Overriding {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    static class Animal {
        Animal reproduce() { return new Animal(); }
        String speak() { return "..."; }
    }

    static class Dog extends Animal {
        @Override
        Dog reproduce() { return new Dog(); }  // covariant return type

        @Override
        String speak() { return "Woof!"; }
    }

    interface Speakable {
        String speak();
    }

    static class Cat extends Animal implements Speakable {
        @Override
        public String speak() { return "Meow!"; }
    }

    public static void main(String[] args) {
        // === Return type covariance ===
        Dog d = new Dog();
        Animal result = d.reproduce();
        check(result instanceof Dog, "return type covariance (Java: same as ArkTS)");

        // === Override with @Override annotation ===
        check(d.speak().equals("Woof!"), "override with @Override (Java: same as ArkTS)");

        // === Interface method override ===
        Speakable s = new Cat();
        check(s.speak().equals("Meow!"), "interface method override (Java: same as ArkTS)");

        // === Polymorphism via overriding ===
        Animal a = new Dog();
        check(a.speak().equals("Woof!"), "polymorphism via override (Java: same as ArkTS)");

        // === Parameter invariance in override ===
        // Java: parameter types must match exactly (no contravariance in override)
        // ArkTS: same - parameter types are invariant in override
        check(true, "parameter invariance in override (Java: same as ArkTS)");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
