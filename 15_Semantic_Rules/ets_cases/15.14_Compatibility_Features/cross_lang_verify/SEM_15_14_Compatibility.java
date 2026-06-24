/**
 * Java cross-language verification for 15.14 Compatibility Features
 *
 * Key difference: Java requires boolean in conditional contexts;
 * ArkTS allows truthiness (non-boolean values in conditions, &&/|| return operands).
 */
class SEM_15_14_Compatibility {
    static int pass = 0;
    static int fail = 0;

    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    public static void main(String[] args) {
        // === Truthiness: Java requires boolean ===
        // ArkTS: if (0) { ... }  // false (0 is falsy)
        // Java:  COMPILE ERROR - int cannot be converted to boolean
        {
            // int x = 0;
            // if (x) { }  // COMPILE ERROR in Java
            check(true, "truthiness: Java requires boolean in if (ArkTS allows non-boolean)");
        }

        // Java equivalent: must write explicit comparison
        {
            int x = 0;
            if (x != 0) {
                check(false, "zero is truthy - should not execute");
            } else {
                check(true, "zero is falsy (Java: explicit comparison)");
            }
        }

        // === Non-empty string truthiness ===
        {
            String s = "hello";
            if (s != null && !s.isEmpty()) {
                check(true, "non-empty string truthiness (Java: explicit null+empty check)");
            }
        }

        // === Empty string falsiness ===
        {
            String s = "";
            if (s != null && !s.isEmpty()) {
                check(false, "empty string should be falsy");
            } else {
                check(true, "empty string falsiness (Java: explicit isEmpty check)");
            }
        }

        // === && and || return boolean in Java ===
        // ArkTS: let r = 0 && "foo"  // r: number|string (returns operand)
        // Java:  boolean r = true && false  // r is always boolean
        {
            boolean r = true && false;
            check(!r, "&& returns boolean in Java (ArkTS returns operand)");
        }

        {
            boolean r = true || false;
            check(r, "|| returns boolean in Java (ArkTS returns operand)");
        }

        // === Truthiness table ===
        {
            // Java: all of these are COMPILE ERRORS in conditionals
            // Must use explicit boolean expressions
            check(!(0 != 0), "zero is falsy (Java: 0 != 0 is false)");
            check(1 != 0, "non-zero is truthy (Java: 1 != 0 is true)");
            check(!("".length() > 0), "empty string falsy (Java: length check)");
            check("x".length() > 0, "non-empty string truthy");
            check(null == null, "null is falsy (Java: null == null is true)");
        }

        // === Ternary expression ===
        // ArkTS: let r = cond ? 42 : "str"  // r: int|string (union type)
        // Java:  Object r = cond ? Integer.valueOf(42) : "str"  // must use common supertype
        {
            Object r = true ? Integer.valueOf(42) : "str";
            check(r instanceof Integer && ((Integer) r).intValue() == 42,
                   "ternary returns common supertype (Java: Object for int|string)");
        }

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) { System.exit(1); }
        System.out.println("verified");
    }
}
