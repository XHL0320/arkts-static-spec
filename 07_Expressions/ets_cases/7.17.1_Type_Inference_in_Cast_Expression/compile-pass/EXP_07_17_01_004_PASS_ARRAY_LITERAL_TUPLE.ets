/**
 * @id EXP_07_17_01_004_PASS_ARRAY_LITERAL_TUPLE
 * @expect compile-pass
 * @section 7.17.1
 * @design 验证数组字面量 as [double, string] 元组类型编译通过
 * @note 正向用例：数组字面量 as 元组类型
 */
let t = [1, "cc"] as [double, string]
