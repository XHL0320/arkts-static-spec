/**
 * @id SEM_15_09_02_002_PASS_single_overrides_multiple_interface
 * @expect compile-pass
 * @section 15.9.2
 * @design Single method in subinterface overrides several methods of superinterface
 * @note Spec lines 18-27
 */
interface Base {
    m(p: string): void
    m(p: number): void
}
interface Derived extends Base {
    m(p: object): void
}
function main(): void {}
