/**
 * Java cross-language verification for 15.4 Assignability
 *
 * Key findings: Assignability rules are very similar across all three.
 * - Subtype assignability same
 * - Numeric widening similar (Java requires explicit for narrowing)
 */
class SEM_15_04_Assignability {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    static class Animal {}
    static class Dog extends Animal {}

    public static void main(String[] args) {
        // Subtype assignability
        Dog d = new Dog();
        Animal a = d;
        check(true, "subtype assignability (Java: same)");

        // Numeric widening
        int i = 42;
        long l = i;
        double dbl = i;
        check(l == 42L && dbl == 42.0, "numeric widening (Java: same)");

        // null assignability (reference types)
        String s = null;
        check(s == null, "null assignability (Java: same)");

        // Interface assignability
        java.util.List<String> list = new java.util.ArrayList<>();
        check(true, "interface implement assignability (Java: same)");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
