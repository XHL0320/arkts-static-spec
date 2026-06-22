/**
 * @id EXP_07_28_02_004_FAIL_FUNC_NON_FUNC_EQ
 * @expect compile-fail
 * @section 7.28.2
 * @design 函数类型与非函数类型相等比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function foo(): void {}
function testFuncNonFuncFail(): void {
  let bad: boolean = foo == 5; console.log(bad.toString())
}
