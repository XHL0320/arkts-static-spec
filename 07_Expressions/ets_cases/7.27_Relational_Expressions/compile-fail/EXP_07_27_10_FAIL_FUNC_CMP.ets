/**
 * @id EXP_07_27_10_FAIL_FUNC_CMP
 * @expect compile-fail
 * @section 7.27
 * @design 函数与函数比较应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testFuncCmpFail(): void {
  let r: boolean = testFuncCmpFail < testFuncCmpFail
}
