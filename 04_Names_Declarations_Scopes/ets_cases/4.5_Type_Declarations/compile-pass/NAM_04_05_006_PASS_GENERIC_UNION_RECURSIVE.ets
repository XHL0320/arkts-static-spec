/**
 * @id NAM_04_05_006_PASS_GENERIC_UNION_RECURSIVE
 * @expect compile-pass
 * @section 4.5
 * @design 泛型联合递归
 * @note 正向用例：验证泛型别名的联合递归
 */
type A<T> = string | Array<A<T>>;
