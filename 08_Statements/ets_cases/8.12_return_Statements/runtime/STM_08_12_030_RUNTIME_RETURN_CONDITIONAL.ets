/**
 * @id STM_08_12_030_RUNTIME_RETURN_CONDITIONAL
 * @expect runtime
 * @section 8.12
 * @design 条件 return 分支

 * @note 运行时用例：实际执行验证条件return
 */
function absVal(x: int): int { if (x < 0) { return -x } return x }
function main(): void {
  if (absVal(-5) != 5) { throw new Error("assertion: abs(-5)=5") }
  if (absVal(3) != 3) { throw new Error("assertion: abs(3)=3") }
  console.log("verified")
}
