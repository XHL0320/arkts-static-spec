/**
 * @id EXP_07_32_004_RUNTIME_ASSIGN_RESULT_VALUE
 * @expect runtime
 * @section 7.32
 * @design 赋值表达式返回赋值后的值

 * @note 运行时用例：实际执行验证赋值表达式结果值
 */
function main(): void {
  let a: int = 0; let b: int = 0
  let c: int = a = b = 5
  if (c != 5) { throw new Error("assertion: c should be 5") }
  if (a != 5) { throw new Error("assertion: a should be 5") }
  if (b != 5) { throw new Error("assertion: b should be 5") }
  console.log("verified")
}
