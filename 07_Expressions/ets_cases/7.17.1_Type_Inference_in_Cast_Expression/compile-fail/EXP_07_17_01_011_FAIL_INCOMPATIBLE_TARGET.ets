/**
 * @id EXP_07_17_01_011_FAIL_INCOMPATIBLE_TARGET
 * @expect compile-fail
 * @section 7.17.1
 * @design 验证数组字面量 as 不兼容类型 string 编译时错误
 * @note 反向用例：数组字面量不能 as 到非数组/元组类型
 */
let s = [1, 2] as string
