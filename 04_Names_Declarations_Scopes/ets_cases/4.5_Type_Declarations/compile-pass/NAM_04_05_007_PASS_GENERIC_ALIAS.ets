/**
 * @id NAM_04_05_007_PASS_GENERIC_ALIAS
 * @expect compile-pass
 * @section 4.5.1
 * @design 泛型类型别名
 * @note 正向用例：验证泛型类型别名定义
 */
type MapOfString<T> = Map<T, string>;
