/**
 * @id EXP_07_05_02_010_PASS_MIXED_STRING_BOOL_INT
 * @expect compile-pass
 * @section 7.5.2
 * @design 混合 string + boolean + int：["hello", true, 1] 推断为 (string | boolean | int)[]
 * @note 正向用例：验证三种不同类型混合推断为 union 数组
 */
let k = ["hello", true, 1]
