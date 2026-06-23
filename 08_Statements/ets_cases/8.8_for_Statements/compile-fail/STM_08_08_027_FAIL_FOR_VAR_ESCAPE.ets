/**
 * @id STM_08_08_027_FAIL_FOR_VAR_ESCAPE
 * @expect compile-fail
 * @section 8.8
 * @design for-init 变量在循环外使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testForVarEscapeFail(): void {
  for (let i: int = 0; i < 3; i++) { console.log("iter") }
  console.log(i.toString())
}
