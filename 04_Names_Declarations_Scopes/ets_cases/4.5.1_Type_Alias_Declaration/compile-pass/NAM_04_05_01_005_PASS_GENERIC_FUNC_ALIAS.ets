/**
 * @id NAM_04_05_01_005_PASS_GENERIC_FUNC_ALIAS
 * @expect compile-pass
 * @section 4.5.1
 * @design 泛型函数类型别名
 * @note 正向用例：验证 type Predicate<T> = (x: T) => boolean 编译通过（spec 4.5.1 行445）
 */
type Predicate<T> = (x: T) => boolean
