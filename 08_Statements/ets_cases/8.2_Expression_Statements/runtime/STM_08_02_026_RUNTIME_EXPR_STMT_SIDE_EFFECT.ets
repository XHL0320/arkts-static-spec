/**
 * @id STM_08_02_026_RUNTIME_EXPR_STMT_SIDE_EFFECT
 * @expect runtime
 * @section 8.2
 * @design 表达式语句副作用验证

 * @note 运行时用例：实际执行验证表达式副作用
 */
let g_counter: int = 0
function increment(): void { g_counter++ }
function main(): void {
  increment()
  increment()
  increment()
  if (g_counter != 3) { throw new Error("assertion: 3 increments") }
  console.log("verified")
}
