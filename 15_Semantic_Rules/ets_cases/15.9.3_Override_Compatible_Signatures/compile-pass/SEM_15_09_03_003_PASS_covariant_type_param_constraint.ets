/**
 * @id SEM_15_09_03_003_PASS_covariant_type_param_constraint
 * @expect compile-pass
 * @section 15.9.3
 * @design Derived class may have compatible subtype constraint of type parameters (covariant)
 * @note Spec lines 48-64, class B1
 */
class Base {}
class Derived extends Base {}
class A1<CovariantTypeParameter extends Base> {}
class B1<CovariantTypeParameter extends Derived> extends A1<CovariantTypeParameter> {}
function main(): void {}
