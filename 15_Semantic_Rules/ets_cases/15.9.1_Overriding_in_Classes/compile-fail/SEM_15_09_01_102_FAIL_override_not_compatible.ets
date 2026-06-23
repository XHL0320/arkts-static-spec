/**
 * @id SEM_15_09_01_102_FAIL_override_not_compatible
 * @expect compile-fail
 * @section 15.9.1
 * @design Override with incompatible signature (parameter type not contravariant)
 * @note Spec line 87: override method_2(p: string) not override-compatible with method_2(p: number)
 */
class Base {
    method_2(p: number): void {}
}
class Derived extends Base {
    override method_2(p: string): void {}
}
function main(): void {}
