/**
 * Java cross-verification: abstract + final combination (should fail)
 * Equivalent to ArkTS compile-fail test 007
 * This file will NOT compile - abstract and final are incompatible in Java
 */
abstract class BaseFail {
    // COMPILE ERROR: illegal combination of modifiers: abstract and final
    public abstract final void doit();
}
