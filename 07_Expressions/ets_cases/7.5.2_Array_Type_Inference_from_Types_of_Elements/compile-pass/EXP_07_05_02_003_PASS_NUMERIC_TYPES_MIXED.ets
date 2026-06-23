/**
 * @id EXP_07_05_02_003_PASS_NUMERIC_TYPES_MIXED
 * @expect compile-pass
 * @section 7.5.2
 * @design 所有元素为数值类型混合：let d = [1, 2.1, 3] 推断为 number[]
 * @note 正向用例：验证多种数值类型混合推断为 number[]
 */
let d = [1, 2.1, 3]
