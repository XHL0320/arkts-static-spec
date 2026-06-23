/**
 * @id EXP_07_05_01_021_FAIL_VALUE_ARRAY_ELEMENT_MISMATCH
 * @expect compile-fail
 * @section 7.5.1
 * @design ValueArray 元素类型不匹配：ValueArray<int> = [3.14]
 * @note 反向用例：double 不可赋值给 int 元素的 ValueArray 应报编译时错误
 */
let c: ValueArray<int> = [3.14]
