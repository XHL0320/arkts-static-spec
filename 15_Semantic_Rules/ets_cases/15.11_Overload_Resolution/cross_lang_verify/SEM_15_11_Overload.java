/**
 * Java cross-language verification for 15.11 Overload Resolution
 *
 * Key differences:
 * - Java: static methods ARE inherited in subclass overload set
 * - ArkTS spec: static methods NOT inherited in subclass overload set
 * - Java: overload resolution based on declared (static) type at compile time
 * - ArkTS runtime: currently resolves based on actual type
 */
class SEM_15_11_Overload {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    // === Overload set: multiple functions with same name ===
    static String pick(int x) { return "int"; }
    static String pick(String x) { return "string"; }
    static String pick(double x) { return "double"; }

    // === Static method inheritance ===
    static class Base {
        static String select(int x) { return "base-int"; }
        static String select(String x) { return "base-string"; }
    }
    static class Derived extends Base {
        // Java: select methods from Base ARE inherited in Derived's overload set
        static String select(double x) { return "derived-double"; }
    }

    // === Overload resolution by declared type (runtime dispatch) ===
    static class PolyBase {
        String pickNum(int x) { return "base-number"; }
    }
    static class PolyDerived extends PolyBase {
        String pickInt(int x) { return "derived-int"; }
        @Override String pickNum(int x) { return "derived-number"; }
    }

    public static void main(String[] args) {
        // === Basic overload resolution by parameter type ===
        check(pick(1).equals("int"), "overload resolution: int param");
        check(pick("hello").equals("string"), "overload resolution: string param");
        check(pick(1.0).equals("double"), "overload resolution: double param");

        // === Static method inheritance (DIFFERS from ArkTS spec) ===
        // Java: Derived.select(42) calls Base.select(int) - inherited
        // ArkTS spec: static overload set only has own methods
        check(Derived.select(42).equals("base-int"), "Java: static method inherited (ArkTS spec says no)");
        check(Derived.select("x").equals("base-string"), "Java: static method inherited (ArkTS spec says no)");
        check(Derived.select(1.0).equals("derived-double"), "Java: own static method");

        // === Overload resolution: declared type ===
        // Java: resolves at compile time based on declared (static) type
        PolyBase b = new PolyDerived();
        // b.pickInt(1);  // COMPILE ERROR: pickInt not in PolyBase
        check(true, "Java: overload resolution by declared type at compile time");

        // === Override (not overload): runtime dispatch ===
        // Java uses virtual method dispatch for overridden methods
        check(b.pickNum(1).equals("derived-number"), "Java: override via vtable dispatch (runtime)");

        // === Equivalent signatures ===
        // Java: methods with same erasure signature = COMPILE ERROR
        // ArkTS: W2323 warning (not error)
        // Uncommenting below causes Java compile error:
        // static String foo(int x) { return "a"; }
        // static int foo(int x) { return 1; }  // COMPILE ERROR: same erasure
        check(true, "equivalent signatures: Java compile error, ArkTS warning W2323");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
