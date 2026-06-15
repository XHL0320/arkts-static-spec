/**
 * @id LEX_02_02_007_PASS_MULTI_LINE_COMMENT
 * @expect compile-pass
 * @section 2.2
 * @design 多行注释: 单行内的多行注释、跨行多行注释、注释内含换行 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testMultiLineComment(): void {
  /* inline comment */ let x: int = 1
  let y: int = /* mid-expression comment */ 2
  /*
   * This is a multi-line comment
   * spanning multiple lines
   */
  let z: int = 3
}
