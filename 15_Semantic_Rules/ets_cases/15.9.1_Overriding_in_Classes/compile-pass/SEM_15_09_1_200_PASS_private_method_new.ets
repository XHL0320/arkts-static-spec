/**
 * @id SEM_15_09_1_200_PASS_private_method_new
 * @expect compile-pass
 * @section 15.9.1
 * @design Private method in superclass not accessible, so same-name method in subclass is a new method, not override
 * @note Spec lines 58-64
 */
class Base {
    private private_member(): void {}
}
class Derived extends Base {
    private_member(): void {}
}
function main(): void {
    let d: Derived = new Derived();
    d.private_member();
}
