/**
 * @id STM_08_08_033_RUNTIME_FOR_REUSE_VARIABLE
 * @expect runtime
 * @section 8.8
 * @design for 循环复用外部变量

 * @note 运行时用例：实际执行验证复用外部变量
 */
function main(): void {
  let i: int
  let sum: int = 0
  for (i = 1; i <= 10; i++) { sum = sum + i }
  if (sum != 55) { throw new Error("assertion: 1..10 sum=55") }
  console.log("verified")
}
