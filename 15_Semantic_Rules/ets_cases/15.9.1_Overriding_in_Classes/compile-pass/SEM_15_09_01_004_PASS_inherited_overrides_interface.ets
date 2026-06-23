/**
 * @id SEM_15_09_01_004_PASS_inherited_overrides_interface
 * @expect compile-pass
 * @section 15.9.1
 * @design Method inherited from Base overrides interface method
 * @note Spec lines 90-102
 */
interface I {
    m(): void
}
class Base {
    m(): void {}
}
class Derived extends Base implements I {
}
function main(): void {
    let d: Derived = new Derived();
    d.m();
}
