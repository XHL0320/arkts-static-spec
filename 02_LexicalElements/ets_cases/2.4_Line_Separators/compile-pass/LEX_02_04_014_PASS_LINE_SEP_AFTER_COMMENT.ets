/**
 * @id LEX_02_04_014_PASS_LINE_SEP_AFTER_COMMENT
 * @expect compile-pass
 * @section 2.4
 * @design 行终止符位于行末单行注释后
 * @note 正向用例：// comment 后跟行终止符正常分隔
 */
function testLineSepAfterComment(): void {
  let a: int = 1 // comment line 1
  let b: int = 2 // comment line 2
  let c: int = a + b
}
