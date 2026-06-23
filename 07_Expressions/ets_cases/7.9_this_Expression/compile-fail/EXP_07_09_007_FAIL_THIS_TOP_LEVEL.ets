/**
 * @id EXP_07_09_007_FAIL_THIS_TOP_LEVEL
 * @expect compile-fail
 * @section 7.9
 * @design 顶层作用域中使用 this：this 在类/接口外使用，应报编译时错误
 * @note 反向用例：验证顶层作用域的 this 引用应产生编译时错误
 */
let x: int = this.value
