/**
 * @id SEM_15_09_2_201_PASS_method_override_interface
 * @expect compile-pass
 * @section 15.9.2
 * @design method_1 overriding in subinterface
 * @note Spec lines 32-60, method_1()
 */
interface Base {
    method_1(): void
    method_2(p: number): void
    method_3(): string
    method_4(a: Array<string>): void
    private foo(): void {}
}
interface Derived extends Base {
    method_1(): void
}
function main(): void {}
