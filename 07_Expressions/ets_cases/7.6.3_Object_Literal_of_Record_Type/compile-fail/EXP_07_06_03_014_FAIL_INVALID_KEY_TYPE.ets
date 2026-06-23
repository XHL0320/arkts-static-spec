/**
 * @id EXP_07_06_03_014_FAIL_INVALID_KEY_TYPE
 * @expect compile-fail
 * @section 7.6.3
 * @design Key 类型不合法：Record<boolean, number> 中 boolean 不是合法的 Key 类型，应编译时错误
 * @note 反向用例：验证 Record 的 Key 只能是数值类型、string、字符串字面量、或这些的 union
 */
let map: Record<boolean, number> = {}
