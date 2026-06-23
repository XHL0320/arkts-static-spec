/**
 * @id STM_08_12_025_FAIL_RETURN_VALUE_IN_VOID
 * @expect compile-fail
 * @section 8.12
 * @design void 函数中 return 带表达式应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function voidFunc(): void { return 42 }
function testReturnValueInVoidFail(): void {
  voidFunc()
}
