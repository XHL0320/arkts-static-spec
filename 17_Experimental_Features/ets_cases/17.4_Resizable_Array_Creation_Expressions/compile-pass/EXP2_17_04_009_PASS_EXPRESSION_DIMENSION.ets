/**
 * @id EXP2_17_04_009_PASS_EXPRESSION_DIMENSION
 * @expect compile-pass
 * @section 17.4
 * @design 表达式维度：维度为 int 算术表达式（计算结果为正），验证编译通过
 * @note 正向用例：验证维度可以是可计算为 int 的表达式
 */
function testExpressionDimensionCreation(): void {
  let base: int = 3
  let extra: int = 2
  let arr = new number[base + extra](0)
  console.log(arr.length)
}
