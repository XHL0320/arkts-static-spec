/**
 * @id EXP_07_05_01_022_FAIL_RESIZABLE_ARRAY_ELEMENT_MISMATCH
 * @expect compile-fail
 * @section 7.5.1
 * @design ResizableArray 元素类型不匹配：string[] = ["aa", 2]
 * @note 反向用例：int 不可赋值给 string 数组应报编译时错误
 */
let d: string[] = ["aa", 2]
