/**
 * @id SEM_15_11_05_004_PASS_class_superclass_superinterface
 * @expect compile-pass
 * @section 15.11.5
 * @design Class with superclass and superinterface, overload set and dedup
 * @note Spec lines 56-80, class D extends C implements I
 */
interface I {
    foo(x: number): void
}
class C {
    foo(s: string): void {}
}
class D extends C implements I {
    foo(x: number): void {}
    foo(x: boolean): void {}
}
function main(): void {
    let d: D = new D()
    d.foo(1)
    d.foo(true)
}
