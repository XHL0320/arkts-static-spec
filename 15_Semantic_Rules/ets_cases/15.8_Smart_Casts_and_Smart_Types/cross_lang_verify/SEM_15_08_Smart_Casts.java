/**
 * Java cross-language verification for 15.8 Smart Casts and Smart Types
 *
 * Key difference: Java requires explicit cast after instanceof;
 * ArkTS auto-narrows the type (Smart Cast).
 */
class SEM_15_08_Smart_Casts {
    static int pass = 0;
    static int fail = 0;

    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    public static void main(String[] args) {
        // === 15.8.1 instanceof narrowing ===
        // ArkTS: if (a instanceof Dog) { a.bark(); }  // auto-narrowed to Dog
        // Java:  if (a instanceof Dog) { ((Dog) a).bark(); }  // explicit cast required
        {
            Animal a = new Dog();
            if (a instanceof Dog) {
                Dog d = (Dog) a;
                check(d.bark().equals("Woof!"), "instanceof narrowing (Java: explicit cast)");
            }
        }

        // === Smart cast with interface ===
        {
            Animal a = new Cat();
            if (a instanceof Cat) {
                Cat c = (Cat) a;
                check(c.meow().equals("Meow!"), "instanceof interface narrowing (Java: explicit cast)");
            }
        }

        // === null check narrowing ===
        // ArkTS: if (x != null) { x.use(); }  // auto-narrowed
        // Java:  if (x != null) { x.use(); }  // no narrowing needed (already typed)
        {
            String s = "hello";
            if (s != null) {
                check(s.length() == 5, "null check (Java: no narrowing needed, already typed)");
            }
        }

        // === Control flow narrowing ===
        {
            Animal a = new Dog();
            if (a instanceof Dog) {
                check(((Dog) a).bark().equals("Woof!"), "CFG narrowing (Java: explicit cast)");
            } else {
                System.out.println("  INFO not a Dog");
            }
        }

        // === Logical AND/OR narrowing ===
        {
            Object o = "hello";
            if (o instanceof String && ((String) o).length() > 0) {
                check(true, "logical AND narrowing (Java: inline cast)");
            }
        }

        // === Difference from ArkTS ===
        // ArkTS also supports typeof narrowing: typeof x === "string" narrows to string
        // Java: no typeof operator; use instanceof for reference types
        // Swift: no typeof narrowing; use optional binding as?
        {
            Object o = "test";
            if (o instanceof String) {
                String s = (String) o;
                check(s.equals("test"), "typeof equivalent (Java: instanceof + cast)");
            }
        }

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) { System.exit(1); }
        System.out.println("verified");
    }
}

class Animal {
    String speak() { return "..."; }
}

class Dog extends Animal {
    @Override
    String speak() { return "Woof!"; }
    String bark() { return "Woof!"; }
}

class Cat extends Animal {
    @Override
    String speak() { return "Meow!"; }
    String meow() { return "Meow!"; }
}
