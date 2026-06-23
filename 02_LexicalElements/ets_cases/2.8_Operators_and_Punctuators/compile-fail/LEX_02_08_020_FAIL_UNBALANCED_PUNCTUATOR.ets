/**
 * @id LEX_02_08_020_FAIL_UNBALANCED_PUNCTUATOR
 * @expect compile-fail
 * @section 2.8
 * @design 标点符号 ( ) 不配对应产生语法错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testUnbalancedPunctuator(): void {
  let r: number = ((1 + 2) * 3
}
