/**
 * @id STM_08_02_018_PASS_ARITH_EXPR_STMT
 * @expect compile-pass
 * @section 8.2
 * @design 算术表达式作为语句
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testArithExprStmt(): void {
  let x: int = 5
  x + 3
  x * 2
  x - 1
  console.log(x.toString())
}
