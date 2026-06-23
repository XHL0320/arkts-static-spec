/**
 * @id SEM_15_09_02_101_FAIL_bad_override_return_type
 * @expect compile-fail
 * @section 15.9.2
 * @design method_3(): number cannot override method_3(): string, return type mismatch
 * @note Spec lines 32-60, method_3() : number
 */
interface Base {
    method_3(): string
}
interface Derived extends Base {
    method_3(): number
}
function main(): void {}
