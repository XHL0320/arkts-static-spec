/**
 * @id SEM_15_09_03_005_PASS_function_type_override
 * @expect compile-pass
 * @section 15.9.3
 * @design Function types override with covariant/contravariant parameter and return
 * @note Spec lines 84-98
 */
class Base {}
class Derived extends Base {}
interface BaseI {
    param(p: (q: Base) => Derived): void
    ret(): (q: Derived) => Base
}
interface DerivedI extends BaseI {
    param(p: (q: Derived) => Base): void
    ret(): (q: Base) => Derived
}
function main(): void {}
