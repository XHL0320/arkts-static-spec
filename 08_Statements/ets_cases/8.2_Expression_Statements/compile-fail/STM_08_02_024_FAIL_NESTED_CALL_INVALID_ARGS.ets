/**
 * @id STM_08_02_024_FAIL_NESTED_CALL_INVALID_ARGS
 * @expect compile-fail
 * @section 8.2
 * @design 函数调用参数类型不匹配应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function foo(x: int): void { console.log(x.toString()) }
function testInvalidArgsFail(): void {
  foo("not_int")
  console.log("never")
}
