/**
 * @id EXP2_17_01_01_006_FAIL_EMPTY_CHAR_LITERAL
 * @expect compile-fail
 * @section 17.1.1
 * @design 空 char 字面量 c'' 应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testEmptyCharLiteralFail(): void {
  let empty: char = c''
  console.log(empty)
}
