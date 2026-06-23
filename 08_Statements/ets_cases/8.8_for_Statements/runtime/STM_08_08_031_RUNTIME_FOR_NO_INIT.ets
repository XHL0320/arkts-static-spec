/**
 * @id STM_08_08_031_RUNTIME_FOR_NO_INIT
 * @expect runtime
 * @section 8.8
 * @design for 语句无初始化部分

 * @note 运行时用例：实际执行验证for无init
 */
function main(): void {
  let i: int = 0; let sum: int = 0
  for (; i < 5; i++) { sum = sum + i }
  if (sum != 10) { throw new Error("assertion: 0+1+2+3+4=10") }
  console.log("verified")
}
