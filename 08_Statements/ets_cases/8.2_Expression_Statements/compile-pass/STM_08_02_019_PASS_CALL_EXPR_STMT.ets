/**
 * @id STM_08_02_019_PASS_CALL_EXPR_STMT
 * @expect compile-pass
 * @section 8.2
 * @design 函数调用作为表达式语句
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function sideEffect(): void { console.log("called") }
function testCallExprStmt(): void {
  sideEffect()
  let result: int = 42
  console.log(result.toString())
}
