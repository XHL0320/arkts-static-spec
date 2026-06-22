/**
 * @id STM_08_10_030_RUNTIME_BREAK_WHILE
 * @expect runtime
 * @section 8.10
 * @design while 中使用 break 终止循环

 * @note 运行时用例：实际执行验证while break
 */
function main(): void {
  let sum: int = 0; let i: int = 0
  while (true) { sum = sum + i; i++; if (i >= 5) break }
  if (sum != 10) { throw new Error("assertion: 0+1+2+3+4=10") }
  console.log("verified")
}
