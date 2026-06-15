/**
 * @id LEX_02_02_006_PASS_SINGLE_LINE_COMMENT
 * @expect compile-pass
 * @section 2.2
 * @design 单行注释: 整行注释、行末注释、连续多行单行注释 * @note 正向用例：验证该特性编译通过的正确用法

 */
// This is a full-line comment
function testSingleLineComment(): void {
  let x: int = 1  // end-of-line comment
  // another comment
  let y: int = 2
  // comment 1
  // comment 2
  // comment 3
  let z: int = 3
}
