/**
 * @id LEX_02_02_016_FAIL_UNTERMINATED_COMMENT
 * @expect compile-fail
 * @section 2.2
 * @design 未闭合的多行注释应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testUnterminatedComment(): void {
  let x: number = 1 /* this comment never ends
}
