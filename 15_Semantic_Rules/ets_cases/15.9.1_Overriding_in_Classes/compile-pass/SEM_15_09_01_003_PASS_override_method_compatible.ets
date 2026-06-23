/**
 * @id SEM_15_09_01_003_PASS_override_method_compatible
 * @expect compile-pass
 * @section 15.9.1
 * @design Overriding method with compatible signature
 * @note Spec lines 76-86 (method_1 overriding)
 */
class Base {
    method_1(): void {}
}
class Derived extends Base {
    override method_1(): void {}
}
function main(): void {
    let d: Derived = new Derived();
    d.method_1();
}
