/**
 * @id SEM_15_11_3_204_PASS_interface_implicit_explicit_combine
 * @expect compile-pass
 * @section 15.11.3
 * @design Combining implicit and explicit overloads with superinterface inheritance
 * @note Spec lines 90-132, interfaces I, J1, J2
 */
interface I {
    foo(s: string): void
    fooOpt(x?: number): void
    overload foo { fooOpt, foo }
}
interface J1 extends I {
    foo(b: boolean): void
}
interface J2 extends I {
    foo(b: boolean): void
    overload foo { foo, fooOpt }
}
function main(): void {}
