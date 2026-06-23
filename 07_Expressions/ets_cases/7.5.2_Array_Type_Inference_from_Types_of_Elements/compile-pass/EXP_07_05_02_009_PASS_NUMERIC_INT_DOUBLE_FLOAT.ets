/**
 * @id EXP_07_05_02_009_PASS_NUMERIC_INT_DOUBLE_FLOAT
 * @expect compile-pass
 * @section 7.5.2
 * @design 多种数值类型混合（int + double）：let j = [1, 1.5, 3] 推断为 number[]
 * @note 正向用例：验证 int 和 double 混合推断为 number[]
 */
let j = [1, 1.5, 3]
