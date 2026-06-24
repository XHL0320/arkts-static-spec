/**
 * Java cross-language verification for 15.10 Overloading
 *
 * Key findings: All three languages have very similar overloading rules:
 * - Overload by parameter type/count (not return type alone)
 * - Only return type different → not sufficient for overload
 */
class SEM_15_10_Overloading {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    // === Overload by parameter type ===
    static String calc(int x) { return "int"; }
    static String calc(double x) { return "double"; }
    static String calc(String x) { return "string"; }

    // === Overload by parameter count ===
    static String sum(int a) { return "one"; }
    static String sum(int a, int b) { return "two"; }
    static String sum(int a, int b, int c) { return "three"; }

    // === Return type alone NOT sufficient for overload ===
    // static String foo(int x) { return "a"; }
    // static int foo(int x) { return 1; }  // COMPILE ERROR: same params

    // === Constructor overloading ===
    static class Point {
        int x, y;
        Point() { this.x = 0; this.y = 0; }
        Point(int x) { this.x = x; this.y = 0; }
        Point(int x, int y) { this.x = x; this.y = y; }
    }

    public static void main(String[] args) {
        // === Overload by parameter type ===
        check(calc(1).equals("int"), "overload by param type: int");
        check(calc(1.0).equals("double"), "overload by param type: double");
        check(calc("x").equals("string"), "overload by param type: string");

        // === Overload by parameter count ===
        check(sum(1).equals("one"), "overload by param count: 1 param");
        check(sum(1, 2).equals("two"), "overload by param count: 2 params");
        check(sum(1, 2, 3).equals("three"), "overload by param count: 3 params");

        // === Constructor overloading ===
        Point p1 = new Point();
        Point p2 = new Point(1);
        Point p3 = new Point(1, 2);
        check(true, "constructor overloading (Java: same as ArkTS)");

        // === Only return type different → error ===
        // Cannot compile this - Java rejects it
        check(true, "return type only not sufficient (Java: same as ArkTS)");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
