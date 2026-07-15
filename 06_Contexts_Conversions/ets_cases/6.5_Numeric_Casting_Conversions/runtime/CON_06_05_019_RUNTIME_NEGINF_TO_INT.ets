/**
 * @id CON_06_05_019_RUNTIME_NEGINF_TO_INT
 * @expect runtime
 * @section 6.5
 * @design -Infinity.toInt() 应为 int 最小值
 * @note spec: if operand is -Inf, result is min int
 */
function main(): void {
  let negInf: double = -1.0 / 0.0
  let minInt: int = negInf.toInt()
  if (minInt != -2147483648) throw new Error('-Inf.toInt() should be min int')
  console.log('-Inf to int verified')
}