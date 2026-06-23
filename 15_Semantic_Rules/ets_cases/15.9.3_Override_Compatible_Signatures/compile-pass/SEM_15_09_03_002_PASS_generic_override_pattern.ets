/**
 * @id SEM_15_09_03_002_PASS_generic_override_pattern
 * @expect compile-pass
 * @section 15.9.3
 * @design Generic method override compatibility template pattern
 * @note Spec lines 20-26
 */
class Base {
    foo<T>(p1: T): T { return p1 }
}
class Derived extends Base {
    override foo<U>(p1: U): U { return p1 }
}
function main(): void {
    let d: Derived = new Derived()
    let r: int = d.foo(42)
}
