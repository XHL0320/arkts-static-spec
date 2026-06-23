/**
 * @id SEM_15_11_03_102_FAIL_interface_with_overload
 * @expect compile-fail
 * @section 15.11.3
 * @design Interface with explicit overload declaration
 * @note Spec lines 40-50, interface J
 */
interface J {
    foo(x: number): void
    foo(s: string): void
    fooOpt(x?: number): void
    overload foo { foo, fooOpt }
}
function main(): void {}
