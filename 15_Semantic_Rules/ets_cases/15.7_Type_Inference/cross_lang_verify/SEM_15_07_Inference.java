/**
 * Java cross-language verification for 15.7 Type Inference
 *
 * Key findings: Similar across all three, but Swift has stronger inference.
 * - Local type inference from initializer
 * - Return type inference
 * - Generic type inference
 */
class SEM_15_07_Inference {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    // Return type inference: Java requires explicit return type
    static int add(int a, int b) { return a + b; }

    // Generic type inference
    static <T> T identity(T x) { return x; }

    public static void main(String[] args) {
        // Local type inference (explicit type, Java 8 compatible)
        int x = 42;
        check(x == 42, "local type inference (Java: explicit type)");

        // Return type: explicit in Java
        check(add(1, 2) == 3, "return type (Java: explicit, unlike ArkTS)");

        // Generic type inference
        Integer r = identity(42);
        check(r == 42, "generic type inference (Java: same)");

        // Constant expression type inference
        final int c = 1 + 2;
        check(c == 3, "constant expression (Java: same)");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
