/**
 * @id EXP_07_05_02_001_PASS_SAME_TYPE_STRING
 * @expect compile-pass
 * @section 7.5.2
 * @design 所有元素同类型 string：let b = ["a"] 推断为 string[]
 * @note 正向用例：验证相同类型 T 推断为 T[]，单一元素也成立
 */
let b = ["a"]
