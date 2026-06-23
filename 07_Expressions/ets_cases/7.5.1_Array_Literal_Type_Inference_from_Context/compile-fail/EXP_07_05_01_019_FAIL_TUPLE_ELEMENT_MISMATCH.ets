/**
 * @id EXP_07_05_01_019_FAIL_TUPLE_ELEMENT_MISMATCH
 * @expect compile-fail
 * @section 7.5.1
 * @design Tuple 元素类型不匹配：let incorrect: [number, string] = ["hello", 1]
 * @note 反向用例：元素类型与 tuple 对应位置不匹配应报编译时错误
 *       各元素必须可赋值到对应位置的构成类型
 */
let incorrect: [number, string] = ["hello", 1]
