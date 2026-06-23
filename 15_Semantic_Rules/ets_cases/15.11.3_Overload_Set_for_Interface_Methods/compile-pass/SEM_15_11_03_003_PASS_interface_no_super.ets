/**
 * @id SEM_15_11_03_003_PASS_interface_no_super
 * @expect compile-pass
 * @section 15.11.3
 * @design Interface without superinterface overload set
 * @note Spec lines 30-36
 */
interface I {
    foo(x: number): void
    foo(s: string): void
}
function main(): void {}
