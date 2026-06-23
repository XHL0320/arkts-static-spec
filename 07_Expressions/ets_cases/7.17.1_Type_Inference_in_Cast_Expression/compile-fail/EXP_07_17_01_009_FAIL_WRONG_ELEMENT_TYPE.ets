/**
 * @id EXP_07_17_01_009_FAIL_WRONG_ELEMENT_TYPE
 * @expect compile-fail
 * @section 7.17.1
 * @design 验证数组字面量 as double[] 元素类型不匹配编译时错误
 * @note 反向用例：数组元素类型不可赋值给目标数组元素类型
 */
let x = [1, "cc"] as double[]
