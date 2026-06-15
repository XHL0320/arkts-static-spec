/**
 * @id LEX_02_04_012_PASS_LINE_SEP_WITH_SPACE
 * @expect compile-pass
 * @section 2.4
 * @design 行终止符前后包含 Space
 * @note 正向用例：行终止符与空白符可任意组合
 */
function testLineSepWithSpace(): void {
  let a: int = 1   
     
  let b: int = 2
}
