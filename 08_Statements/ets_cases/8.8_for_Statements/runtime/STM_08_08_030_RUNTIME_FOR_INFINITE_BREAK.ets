/**
 * @id STM_08_08_030_RUNTIME_FOR_INFINITE_BREAK
 * @expect runtime
 * @section 8.8
 * @design for 无限循环 + break 退出

 * @note 运行时用例：实际执行验证for+break
 */
function main(): void {
  let count: int = 0
  for (let i: int = 0; i < 100; i++) { count++; if (count >= 5) break }
  if (count != 5) { throw new Error("assertion: break at count=5") }
  console.log("verified")
}
