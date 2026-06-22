/**
 * @id STM_08_01_027_RUNTIME_DISCARDED_EXPR
 * @expect runtime
 * @section 8.1
 * @design 表达式语句结果丢弃不影响变量值

 * @note 运行时用例：实际执行验证表达式丢弃
 */
function main(): void {
  let x: int = 10
  x + 100  // discarded
  if (x != 10) { throw new Error("assertion: discarded expr should not affect x") }
  console.log("verified")
}
