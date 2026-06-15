/**
 * @id LEX_02_03_012_PASS_WS_AROUND_OPERATORS
 * @expect compile-pass
 * @section 2.3
 * @design 空白在运算符两侧的灵活性 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsAroundOperators(): void {
  let a: int = 1 + 2
  let b: int = 3-4
  let c: int = 5  *  6
  let d: int = 7	/	2
  let e: int = 8 % 3
}
