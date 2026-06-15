/**
 * @id LEX_02_04_023_FAIL_COMMENT_LINE_CONTINUATION
 * @expect compile-fail
 * @section 2.4
 * @design 单行注释 // 应在行终止符处结束，后续若试图反斜杠续行也无效（会引入错误的 Token）
 * @note 反向用例：// comment \\
    next line 实际被解释为下一行有效代码导致语法错
 */
function testCommentLineContinuation(): void {
  // this should be a comment \
  this is not a valid statement
}
