/**
 * @id STM_08_08_029_FAIL_FOR_WITHOUT_PARENS
 * @expect compile-fail
 * @section 8.8
 * @design for 语句缺少括号应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testForWithoutParensFail(): void {
  for let i: int = 0; i < 3; i++ { console.log("bad") }
}
