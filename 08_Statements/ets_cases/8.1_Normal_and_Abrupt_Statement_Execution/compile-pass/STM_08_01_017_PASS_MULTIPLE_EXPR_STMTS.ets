/**
 * @id STM_08_01_017_PASS_MULTIPLE_EXPR_STMTS
 * @expect compile-pass
 * @section 8.1
 * @design 多个表达式语句顺序执行
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testMultipleExprStmts(): void {
  let a: int = 1
  a++
  a += 2
  let b: int = a * 3
  console.log(a.toString() + b.toString())
}
