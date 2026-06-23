/**
 * @id STM_08_08_032_RUNTIME_FOR_NO_UPDATE
 * @expect runtime
 * @section 8.8
 * @design for 语句无更新部分

 * @note 运行时用例：实际执行验证for无update
 */
function main(): void {
  let sum: int = 0
  for (let i: int = 0; i < 5;) { sum = sum + i; i++ }
  if (sum != 10) { throw new Error("assertion: 0+1+2+3+4=10") }
  console.log("verified")
}
