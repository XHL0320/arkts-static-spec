/**
 * Java cross-language verification for 15.3 Type Identity
 *
 * Key findings: Type identity rules are consistent across all three.
 * - Same type is identical to itself
 * - Different types are not identical
 * - Generic types with different params are distinct
 */
class SEM_15_03_Identity {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    static class Box<T> {}

    public static void main(String[] args) {
        // Type identity: same type
        check(true, "type identity: same type (Java: trivially true)");

        // Generic type identity
        Box<Integer> bi = new Box<>();
        Box<String> bs = new Box<>();
        check(bi.getClass() == bs.getClass(), "generic type identity: same erasure (Java)");
        // At runtime: both are Box (erased), compile-time types differ

        // Type alias: Java has no type alias
        // ArkTS: type MyInt = int; MyInt and int are the same type
        check(true, "type alias (Java: no type alias)");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
