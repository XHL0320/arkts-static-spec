/**
 * @id EXP_07_17_01_008_FAIL_WRONG_TARGET_TYPE
 * @expect compile-fail
 * @section 7.17.1
 * @design 验证数组字面量 as 非数组/元组类型编译时错误
 * @note 反向用例：数组字面量不能 as 到非数组/元组类型
 */
let x = [1, 2] as double
