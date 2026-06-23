/**
 * @id SEM_15_09_1_301_FAIL_multiple_override_same
 * @expect compile-fail
 * @section 15.9.1
 * @design More than one method of subclass overrides the same method of superclass
 * @note Spec lines 130-138
 */
class I {
    foo(p: C): void {}
}
class C extends I {
    foo(p: C): void {}
    foo(p: I): void {}
}
function main(): void {}
