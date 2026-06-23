/**
 * @id SEM_15_11_05_003_PASS_class_no_super
 * @expect compile-pass
 * @section 15.11.5
 * @design Class without superclass or superinterface overload set
 * @note Spec lines 32-38
 */
class C {
    foo(x: number): void {}
    foo(s: string): void {}
}
function main(): void {
    let c: C = new C()
    c.foo(1)
    c.foo("s")
}
