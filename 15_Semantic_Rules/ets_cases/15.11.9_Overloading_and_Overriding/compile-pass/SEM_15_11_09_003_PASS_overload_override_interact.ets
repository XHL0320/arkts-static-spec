/**
 * @id SEM_15_11_09_003_PASS_overload_override_interact
 * @expect compile-pass
 * @section 15.11.9
 * @design Overload resolution at compile time, overriding dispatch at runtime
 * @note Spec lines 18-42
 */
class C1 {}
class C2 extends C1 {}
class A {
    foo(c: C2): void { console.log("A.C2") }
    foo(c: C1): void { console.log("A.C1") }
}
class B extends A {
    override foo(c: C2): void { console.log("B.C2") }
}
function main(): void {
    let a: A = new B()
    a.foo(new C2())
    a.foo(new C1())
}
