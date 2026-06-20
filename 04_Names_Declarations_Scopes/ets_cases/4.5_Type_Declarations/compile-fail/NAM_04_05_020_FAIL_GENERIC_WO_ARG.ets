/**
 * @id NAM_04_05_020_FAIL_GENERIC_WO_ARG
 * @expect compile-fail
 * @section 4.5.1
 * @design 泛型别名无类型参数
 * @note 反向用例：验证使用泛型别名时未提供类型参数
 */
type A<T> = Array<T>;
let x: A = [];
