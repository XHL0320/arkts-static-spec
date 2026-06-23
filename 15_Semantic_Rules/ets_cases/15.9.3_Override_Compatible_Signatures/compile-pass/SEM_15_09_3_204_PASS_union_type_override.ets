/**
 * @id SEM_15_09_3_204_PASS_union_type_override
 * @expect compile-pass
 * @section 15.9.3
 * @design Union types override with contravariant parameter and covariant return
 * @note Spec lines 101-129
 */
class BaseSuperType {}
class Base extends BaseSuperType {}
class Derived extends Base {}
interface BaseI {
    param<T extends Derived, U extends Base>(p: T | U): void
    ret<T extends Derived, U extends Base>(): T | U
}
interface DerivedI extends BaseI {
    param<T extends Base, U extends Object>(p: Base | BaseSuperType): void
    ret<T extends Base, U extends BaseSuperType>(): T | U
}
function main(): void {}
