/**
 * @id EXP_07_32_02_009_PASS_COMPOUND_LHS_ONCE
 * @expect compile-pass
 * @section 7.32.2
 * @design 复合赋值左侧仅求值一次
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCompoundLhsOnce(): void {
  let x: int = 1
  x += x = 3
  console.log(x.toString())
}
