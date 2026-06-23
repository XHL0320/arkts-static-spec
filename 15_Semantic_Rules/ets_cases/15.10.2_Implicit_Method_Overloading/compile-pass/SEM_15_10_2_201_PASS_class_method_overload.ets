/**
 * @id SEM_15_10_2_201_PASS_class_method_overload
 * @expect compile-pass
 * @section 15.10.2
 * @design Class method overload by parameter type
 * @note Spec lines 42-56
 */
class C {
    foo(p: number): void { console.log("number") }
    foo(p: string): void { console.log("string") }
}
function main(): void {
    let c: C = new C()
    c.foo(5)
    c.foo("5")
}
