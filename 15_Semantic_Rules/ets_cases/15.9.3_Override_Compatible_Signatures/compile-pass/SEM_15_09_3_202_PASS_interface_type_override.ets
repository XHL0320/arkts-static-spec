/**
 * @id SEM_15_09_3_202_PASS_interface_type_override
 * @expect compile-pass
 * @section 15.9.3
 * @design Interface types override with contravariant parameter and covariant return
 * @note Spec lines 69-81
 */
class Base {}
class Derived extends Base {}
interface BaseI {
    param(p: Derived): void
    ret(): Base
}
interface DerivedI extends BaseI {
    param(p: Base): void
    ret(): Derived
}
function main(): void {}
