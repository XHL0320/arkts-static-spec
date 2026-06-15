/**
 * @id LEX_02_02_004_PASS_LINE_SEPARATOR_STATEMENTS
 * @expect compile-pass
 * @section 2.2
 * @design 换行分隔多条语句，行尾可选分号 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testLineSeparatorStatements(): void {
  let a: int = 1
  let b: int = 2
  let c: int = 3;
  let d: int = a + b
  let e: int = c + d
}
