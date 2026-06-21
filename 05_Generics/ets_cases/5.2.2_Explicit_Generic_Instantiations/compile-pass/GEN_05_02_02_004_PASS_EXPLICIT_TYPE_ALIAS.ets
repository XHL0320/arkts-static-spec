/**
 * @id GEN_05_03_009_PASS_EXPLICIT_TYPE_ALIAS
 * @expect compile-pass
 * @section 5.3
 * @design 类型别名明确实例化
 * @note 正向用例：验证类型别名的明确实例化
 */
type MyArray<T> = T[];
let arr: MyArray<boolean> = [true, false];
