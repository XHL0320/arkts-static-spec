/**
 * @id NAM_04_05_005_PASS_GENERIC_RECURSIVE_OK
 * @expect compile-pass
 * @section 4.5
 * @design 泛型递归-作为类型参数的递归
 * @note 正向用例：验证泛型别名的合法递归
 */
type A<T> = Array<A<T>>;
