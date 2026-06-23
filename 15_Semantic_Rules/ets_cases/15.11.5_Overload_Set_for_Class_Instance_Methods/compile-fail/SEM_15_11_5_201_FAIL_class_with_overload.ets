/**
 * @id SEM_15_11_5_201_PASS_class_with_overload
 * @expect compile-fail
 * @section 15.11.5
 * @design Class with explicit overload declaration
 * @note Spec lines 42-52, class D
 */
class D {
    foo(x: number): void {}
    foo(s: string): void {}
    fooOpt(x?: number): void {}
    overload foo { foo, fooOpt }
}
function main(): void {
    let d: D = new D()
    d.foo(1)
    d.foo("s")
}
