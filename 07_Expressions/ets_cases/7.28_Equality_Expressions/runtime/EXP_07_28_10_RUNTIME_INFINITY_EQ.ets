/**
 * @id EXP_07_28_10_RUNTIME_INFINITY_EQ
 * @expect runtime
 * @section 7.28
 * @design 无穷大相等运行时
 * @note 运行时用例：实际执行验证无穷大相等运行时
 */

function main(): void {
  let pi: double = 1.0 / 0.0; let ni: double = 1.0 / 0.0
  if (pi != ni) { throw new Error("assertion: both are +Inf") }
  console.log("verified")
}
