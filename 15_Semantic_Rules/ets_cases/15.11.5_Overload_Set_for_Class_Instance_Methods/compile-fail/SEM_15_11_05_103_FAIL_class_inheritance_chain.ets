/**
 * @id SEM_15_11_05_103_FAIL_class_inheritance_chain
 * @expect compile-fail
 * @section 15.11.5
 * @design Class inheritance chain with direct supertypes only considered
 * @note Spec lines 84-126, classes I, C, D, E
 */
class A {}
interface I {
    foo(x: number): void
}
class C implements I {
    foo(x: A): void {}
}
class D extends C {
    foo(s: string): void {}
    foo(x: A | undefined): void {}
}
class E extends D {
    foo(x: number): void {}
}
function main(): void {
    let e: E = new E()
    e.foo(1)
    e.foo("s")
}
