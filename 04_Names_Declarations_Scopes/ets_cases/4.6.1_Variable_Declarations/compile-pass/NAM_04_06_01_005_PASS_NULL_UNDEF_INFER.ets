/**
 * @id NAM_04_06_01_005_PASS_NULL_UNDEF_INFER
 * @expect compile-pass
 * @section 4.6.1
 * @design null和undefined推断
 * @note 正向用例：验证 null/undefined 类型推断
 */
let a_null = null;
let b_undef = undefined;
let c_arr = [null, undefined];
