/**
 * @id EXP_07_05_02_011_FAIL_EMPTY_ARRAY
 * @expect compile-fail
 * @section 7.5.2
 * @design 空数组无上下文：let a = [] 类型无法推断，编译时错误
 * @note 反向用例：验证 N==0 时空数组类型无法推断应报编译时错误
 */
let a = []
