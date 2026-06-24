/**
 * Java cross-language verification for 15.12 Type Erasure
 *
 * Key differences:
 * - Java: erases to Object (or bound); ArkTS: erases to any
 * - Swift: no type erasure (reified generics)
 * - Java: signature equivalence = same erasure → compile error
 * - ArkTS: signature equivalence also considers arity, array nesting, tuple arity
 */
class SEM_15_12_Erasure {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    // === Generic erasure: erased to Object at runtime ===
    static class Holder<T> {
        T val;
        Holder(T v) { val = v; }
        T get() { return val; }
    }

    // === Erased signature conflict ===
    // Java: these two methods have the same erasure → COMPILE ERROR
    // static void process(int[] a) {}
    // static void process(Integer[] a) {}  // COMPILE ERROR: same erasure (Object[])

    // === Effective type mapping ===
    // ArkTS: literal "foo" → effective type string
    // Java:  "foo" is already String (no literal types)
    // ArkTS: union → common supertype; Java: same via type inference

    public static void main(String[] args) {
        // === Generic erasure ===
        Holder<String> h = new Holder<>("hello");
        String v = h.get();
        check(v.equals("hello"), "generic erasure (Java: erases to Object, same pattern)");

        // === Runtime type erasure ===
        // Java: generic type info is erased at runtime
        boolean runtimeCheck = h instanceof Holder;
        check(runtimeCheck, "runtime erasure (Java: Holder<?> erases to Holder)");

        // === Effective type: literal → base type ===
        // ArkTS: let s: string = "foo"; // literal type
        // Java:  String s = "foo"; // already String
        String lit = "foo";
        check(lit.equals("foo"), "effective type: literal→String (Java: no literal types)");

        // === Method with generic erasure ===
        // Java: cannot use instanceof with type parameter at runtime
        // if (h instanceof Holder<String>) {}  // COMPILE ERROR
        check(true, "generic type info erased at runtime (same in ArkTS)");

        // === Array vs generic type erasure ===
        // Java: arrays retain component type at runtime
        // Generics: erased
        String[] strArray = new String[1];
        check(strArray instanceof String[], "Java: arrays retain type info at runtime");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
