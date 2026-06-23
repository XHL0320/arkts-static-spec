/**
 * @id EXP_07_01_01_015_PASS_COMPOUND_ASSIGN_ARITH
 * @expect compile-pass
 * @section 7.1.1
 * @design 复合赋值 `+=` 右结合，右侧表达式先按算术优先级计算再赋值
 * @note 正向用例：验证复合赋值与算术优先级
 */
function testCompoundAssignArith(): void {
  let a: int = 2
  let b: int = 3
  a += b * 2
  b *= a + 1
}
