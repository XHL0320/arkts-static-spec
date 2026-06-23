/**
 * @id SEM_15_11_9_201_PASS_single_override_both
 * @expect compile-pass
 * @section 15.11.9
 * @design Single method in subclass overrides several methods of superclass
 * @note Spec lines 58-83
 */
class C1 {}
class C2 extends C1 {}
class A {
    foo(c: C2): void { console.log("A.C2") }
    foo(c: C1): void { console.log("A.C1") }
}
class D extends A {
    foo(c: C1): void { console.log("D.C1") }
}
function main(): void {
    let a: A = new D()
    a.foo(new C2())
    a.foo(new C1())
}
