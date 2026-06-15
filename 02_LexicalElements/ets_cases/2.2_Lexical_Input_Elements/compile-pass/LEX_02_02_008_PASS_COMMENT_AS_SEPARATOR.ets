/**
 * @id LEX_02_02_008_PASS_COMMENT_AS_SEPARATOR
 * @expect compile-pass
 * @section 2.2
 * @design 注释可替代空白符分隔Token * @note 正向用例：验证该特性编译通过的正确用法

 */
function testCommentAsSeparator(): void {
  let/*comment*/x: int = 1
  let y: int = 2 /*comment*/ + 3
}
