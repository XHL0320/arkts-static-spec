/**
 * @id EXP_07_27_6_RUNTIME_NAN_LT
 * @expect runtime
 * @section 7.27
 * @design NaN 始终不小于任何值
 * @note 运行时用例：实际执行验证NaN 始终不小于任何值
 */

function main(): void {
  let nan: double = 0.0 / 0.0
  if (nan < 0.0) { throw new Error("assertion failed: NaN < 0") }
  if (nan > 0.0) { throw new Error("assertion failed: NaN > 0") }
  console.log("verified")
}
