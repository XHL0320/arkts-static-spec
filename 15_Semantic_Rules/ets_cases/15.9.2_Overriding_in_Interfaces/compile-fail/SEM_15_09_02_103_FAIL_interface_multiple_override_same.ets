/**
 * @id SEM_15_09_02_103_FAIL_interface_multiple_override_same
 * @expect compile-fail
 * @section 15.9.2
 * @design More than one method of subinterface overrides the same method of superinterface
 * @note Spec lines 64-72
 */
interface I {
    foo(p: C): void
}
interface C extends I {
    foo(p: C): void
    foo(p: I): void
}
function main(): void {}
