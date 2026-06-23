/**
 * @id EXP_07_05_01_020_FAIL_FIXED_ARRAY_ELEMENT_MISMATCH
 * @expect compile-fail
 * @section 7.5.1
 * @design FixedArray 元素类型不匹配：FixedArray<string> = [1, 2]
 * @note 反向用例：int 不可赋值给 string 元素的 FixedArray 应报编译时错误
 */
let b: FixedArray<string> = [1, 2]
