/**
 * @id EXP2_17_01_01_007_FAIL_MULTI_CHAR_LITERAL
 * @expect compile-fail
 * @section 17.1.1
 * @design 多字符 char 字面量 c'ab' 应产生编译时错误（只能包含单个 UTF-16 符号）
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testMultiCharLiteralFail(): void {
  let multi: char = c'ab'
  console.log(multi)
}
