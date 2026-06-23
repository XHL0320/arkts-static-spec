/**
 * @id SEM_15_09_03_101_FAIL_contravariant_type_param_constraint
 * @expect compile-fail
 * @section 15.9.3
 * @design Derived class cannot have non-compatible constraints of type parameters (contravariant)
 * @note Spec lines 48-64, class B2 compile-time error
 */
class Base {}
class Derived extends Base {}
class A2<ContravariantTypeParameter extends Derived> {}
class B2<ContravariantTypeParameter extends Base> extends A2<ContravariantTypeParameter> {}
function main(): void {}
