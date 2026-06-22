/**
 * @id EXP_07_36_007_FAIL_CONST_INVALID_REF
 * @expect compile-fail
 * @section 7.36
 * @design 常量表达式引用非常量变量应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
let x: int = 5
const BAD: int = x * 2
function testConstInvalidRefFail(): void {
  console.log(BAD.toString())
}
