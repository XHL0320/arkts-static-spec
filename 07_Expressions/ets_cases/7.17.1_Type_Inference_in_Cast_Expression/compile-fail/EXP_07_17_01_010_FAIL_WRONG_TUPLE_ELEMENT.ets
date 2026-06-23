/**
 * @id EXP_07_17_01_010_FAIL_WRONG_TUPLE_ELEMENT
 * @expect compile-fail
 * @section 7.17.1
 * @design 验证元组 as 转换时元素类型不匹配编译时错误
 * @note 反向用例：元组元素类型不可赋值给目标元组对应位置类型
 */
let t = [1.0, "cc"] as [int, string]
