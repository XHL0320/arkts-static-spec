/**
 * @id GEN_05_01_004_PASS_GENERIC_TYPE_ALIAS
 * @expect compile-pass
 * @section 5.1
 * @design 泛型类型别名
 * @note 正向用例：验证泛型类型别名通过编译
 */
type Wrapper<T> = T;
