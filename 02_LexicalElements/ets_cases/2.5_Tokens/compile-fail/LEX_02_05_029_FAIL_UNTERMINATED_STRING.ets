/**
 * @id LEX_02_05_029_FAIL_UNTERMINATED_STRING
 * @expect compile-fail
 * @section 2.5
 * @design 未闭合的字符串字面量应编译失败
 * @note 反向用例：缺少结束引号的字符串 Token
 */
function testUnterminatedString(): void {
  let s: string = "hello world
}
