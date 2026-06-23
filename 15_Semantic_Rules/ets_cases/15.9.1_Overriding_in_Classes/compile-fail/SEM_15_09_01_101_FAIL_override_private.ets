/**
 * @id SEM_15_09_01_101_FAIL_override_private
 * @expect compile-fail
 * @section 15.9.1
 * @design override private method causes compile error as private methods are not accessible
 * @note Spec lines 50-56
 */
class Base {
    private private_member(): void {}
}
class Derived extends Base {
    override private_member(): void {}
}
function main(): void {}
