/**
 * @id EXP_07_05_01_009_PASS_ARRAY_GENERIC_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design Array<T> 泛型类型上下文：let a: Array<string> = ["aa", "bb"]
 * @note 正向用例：验证 Array<T> 泛型类型作为上下文编译通过
 */
let a: Array<string> = ["aa", "bb"]
