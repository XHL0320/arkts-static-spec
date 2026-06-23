/**
 * @id SEM_15_10_02_003_PASS_inherited_method_overload
 * @expect compile-pass
 * @section 15.10.2
 * @design Inherited method overload from superclass
 * @note Spec lines 20-38
 */
class Base {
    foo(p: number): void { console.log("Base.number") }
}
class Derived extends Base {
    foo(p: string): void { console.log("Derived.string") }
}
function main(): void {
    let d: Derived = new Derived()
    d.foo(5)
    d.foo("5")
}
