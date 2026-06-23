/**
 * @id SEM_15_09_1_203_PASS_single_overrides_multiple
 * @expect compile-pass
 * @section 15.9.1
 * @design Single method in subclass overrides several methods of superclass
 * @note Spec lines 106-127
 */
class A {}
class B {}
class C {
    foo(a: A): void { console.log("C.A") }
    foo(b: B): void { console.log("C.B") }
}
class D extends C {
    foo(o: Object): void { console.log("D.Object") }
}
function main(): void {
    let c: C = new D()
    c.foo(new A())
    c.foo(new B())
}
