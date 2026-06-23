/**
 * @id EXP_07_28_10_FAIL_FUNC_INT_EQ
 * @expect compile-fail
 * @section 7.28
 * @design 函数与int相等应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testFuncIntEqFail(): void {
  let r: boolean = testFuncIntEqFail == 5
}
