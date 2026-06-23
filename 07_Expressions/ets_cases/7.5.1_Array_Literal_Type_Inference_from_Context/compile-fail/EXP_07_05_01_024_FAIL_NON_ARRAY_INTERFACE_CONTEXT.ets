/**
 * @id EXP_07_05_01_024_FAIL_NON_ARRAY_INTERFACE_CONTEXT
 * @expect compile-fail
 * @section 7.5.1
 * @design 非数组接口作为上下文：SomeI 不是 Array 的超接口
 * @note 反向用例：非 Array 超接口作为上下文应报编译时错误
 */
interface SomeI {}

let a = [1, 2] as SomeI
