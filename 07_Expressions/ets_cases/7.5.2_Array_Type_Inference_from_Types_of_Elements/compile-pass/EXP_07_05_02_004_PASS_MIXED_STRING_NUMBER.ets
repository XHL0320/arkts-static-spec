/**
 * @id EXP_07_05_02_004_PASS_MIXED_STRING_NUMBER
 * @expect compile-pass
 * @section 7.5.2
 * @design 混合 string + number 类型：let e = ["a" + "b", 1, 3.14] 推断为 (string | number)[]
 * @note 正向用例：验证混合类型推断为 union 数组
 */
let e = ["a" + "b", 1, 3.14]
