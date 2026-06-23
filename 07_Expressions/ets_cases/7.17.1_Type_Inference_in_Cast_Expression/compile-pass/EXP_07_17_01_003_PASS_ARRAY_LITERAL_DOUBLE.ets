/**
 * @id EXP_07_17_01_003_PASS_ARRAY_LITERAL_DOUBLE
 * @expect compile-pass
 * @section 7.17.1
 * @design 验证数组字面量 as double[] 编译通过（int→double 提升）
 * @note 正向用例：数组字面量 as 数组类型
 */
let arr = [1, 2] as double[]
