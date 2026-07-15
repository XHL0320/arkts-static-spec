/**
 * @id GEN_05_01_01_108_FAIL_NULLISH_ARG_TO_NON_NULLISH
 * @expect compile-fail
 * @section 5.1.1
 * @design non-nullish约束传播：T extends Base时T不能是null/undefined
 * @note spec: if constraint is non-nullish, T is also non-nullish
 */
class Base108 {}
class G108<T extends Base108> {}
let g108: G108<undefined>