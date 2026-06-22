/**
 * @id EXP_07_28_01_008_RUNTIME_INFINITY_EQ
 * @expect runtime
 * @section 7.28.1
 * @design Infinity 相等行为

 * @note 运行时用例：实际执行验证Infinity 相等
 */
function main(): void {
  let posInf: double = 1.0 / 0.0; let negInf: double = -1.0 / 0.0
  if (!(posInf == posInf)) { throw new Error("assertion failed: +Inf == +Inf") }
  if (posInf == negInf) { throw new Error("assertion failed: +Inf != -Inf") }
  console.log("verified")
}
