/**
 * @id EXP_07_07_014_FAIL_NON_ITERABLE_NUMBER
 * @expect compile-fail
 * @section 7.7
 * @design 非 iterable 数值类型扩展：数字 int 类型不能被扩展
 * @note 反向用例：验证数值类型扩展应报编译时错误
 */
let x: int = 42
let result: int[] = [...x]
