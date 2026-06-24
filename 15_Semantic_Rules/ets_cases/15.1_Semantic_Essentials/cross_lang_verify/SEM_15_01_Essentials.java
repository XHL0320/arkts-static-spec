/**
 * Java cross-language verification for 15.1 Semantic Essentials
 *
 * Key finding: ArkTS semantic essentials are highly consistent with Java.
 * - Numeric widening (int→double) same
 * - String concatenation with + same
 * - Assignment context rules similar
 */
class SEM_15_01_Essentials {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    public static void main(String[] args) {
        // Numeric widening: int→double
        int i = 42;
        double d = i;
        check(d == 42.0, "numeric widening int→double (Java: same)");

        // String concatenation
        String s = "Hello, " + 42 + true;
        check(s.equals("Hello, 42true"), "string concat (Java: same)");

        // Assignment context: subtype
        Object o = "string";
        check(o instanceof String, "assignment context: subtype (Java: same)");

        // Standalone expression type
        int expr = 1 + 2;
        check(expr == 3, "standalone expression int (Java: same)");

        // Variable initialization
        String v = "hello";
        check(v.equals("hello"), "variable initialization (Java: same)");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
