/**
 * @id SEM_15_09_3_205_PASS_type_param_constraint_override
 * @expect compile-pass
 * @section 15.9.3
 * @design Type parameter constraint contravariance for override
 * @note Spec lines 132-146
 */
class Base {}
class Derived extends Base {}
interface BaseI {
    param<T extends Derived>(p: T): void
    ret<T extends Derived>(): T
}
interface DerivedI extends BaseI {
    param<T extends Base>(p: T): void
    ret<T extends Base>(): T
}
function main(): void {}
