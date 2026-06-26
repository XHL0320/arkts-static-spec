/**
 * @id NAM_04_05_107_FAIL_GENERIC_SELF_REF
 * @expect compile-fail
 * @section 4.5
 * @design 泛型类型别名的自身引用
 * @note 反向用例：验证泛型 type A<T> = A<T> 直接自身引用编译错误（spec 4.5.1 行 527）
 */
type A<T> = A<T>;
