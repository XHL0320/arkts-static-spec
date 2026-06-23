/**
 * @id SEM_15_11_03_004_PASS_interface_extends_order
 * @expect compile-pass
 * @section 15.11.3
 * @design Interface extends multiple superinterfaces, overload set order follows extends list
 * @note Spec lines 54-72, interface J extends I1, I2
 */
interface I1 {
    foo(x: number): void
}
interface I2 {
    foo(s: string): void
    foo(b: boolean): void
}
interface J extends I1, I2 {
    foo(): void
}
function main(): void {}
