/**
 * @id EXP_07_36_006_FAIL_CONST_DECREMENT
 * @expect compile-fail
 * @section 7.36
 * @design 常量表达式中使用 -- 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
let count: int = 5
const BAD: int = --count
function testConstDecrementFail(): void {
  console.log(BAD.toString())
}
