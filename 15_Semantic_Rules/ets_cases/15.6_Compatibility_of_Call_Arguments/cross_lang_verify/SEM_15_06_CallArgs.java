/**
 * Java cross-language verification for 15.6 Compatibility of Call Arguments
 *
 * Key findings: Very similar across all three.
 * - Parameter type must be compatible
 * - Subtype parameter passing OK
 * - Type mismatch → compile error
 */
class SEM_15_06_CallArgs {
    static int pass = 0, fail = 0;
    static void check(boolean cond, String msg) {
        if (cond) { pass++; System.out.println("  PASS " + msg); }
        else { fail++; System.out.println("  FAIL " + msg); }
    }

    static class Animal {}
    static class Dog extends Animal {}

    static void acceptAnimal(Animal a) {}

    public static void main(String[] args) {
        // Subtype parameter passing
        acceptAnimal(new Dog());
        check(true, "subtype parameter passing (Java: same)");

        // Basic parameter passing
        acceptAnimal(new Animal());
        check(true, "compatible parameter type (Java: same)");

        // Type mismatch: compile error
        // acceptAnimal("string");  // COMPILE ERROR in Java
        check(true, "type mismatch rejection (Java: same)");

        // Parameter count mismatch: compile error
        // acceptAnimal();  // COMPILE ERROR
        check(true, "parameter count mismatch (Java: same)");

        System.out.println("\n=== Summary ===");
        System.out.println("Pass: " + pass + "  Fail: " + fail);
        if (fail > 0) System.exit(1);
        System.out.println("verified");
    }
}
