/**
 * @id CON_06_05_018_RUNTIME_INF_TO_INT
 * @expect runtime
 * @section 6.5
 * @design +Infinity.toInt() 应为 int 最大值
 * @note spec: if operand is +Inf, result is max int
 */
function main(): void {
  let inf: double = 1.0 / 0.0
  let maxInt: int = inf.toInt()
  if (maxInt != 2147483647) throw new Error('+Inf.toInt() should be max int')
  console.log('+Inf to int verified')
}