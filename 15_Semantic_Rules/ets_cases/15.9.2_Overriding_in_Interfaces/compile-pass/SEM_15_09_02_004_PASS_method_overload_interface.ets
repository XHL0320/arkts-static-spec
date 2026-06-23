/**
 * @id SEM_15_09_02_004_PASS_method_overload_interface
 * @expect compile-pass
 * @section 15.9.2
 * @design method_2 overloading (not overriding) in subinterface
 * @note Spec lines 32-60, method_2(p: string)
 */
interface Base {
    method_2(p: number): void
}
interface Derived extends Base {
    method_2(p: string): void
}
function main(): void {}
