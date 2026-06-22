/**
 * @id STM_08_07_036_RUNTIME_WHILE_COUNTDOWN
 * @expect runtime
 * @section 8.7
 * @design while 倒计时循环

 * @note 运行时用例：实际执行验证while倒计时
 */
function main(): void {
  let n: int = 5; let sum: int = 0
  while (n > 0) { sum = sum + n; n-- }
  if (sum != 15) { throw new Error("assertion: 5+4+3+2+1=15") }
  console.log("verified")
}
