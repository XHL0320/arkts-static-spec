/**
 * @id EXP_07_28_7_RUNTIME_NAN_SELF_NEQ
 * @expect runtime
 * @section 7.28
 * @design NaN 不等于自身
 * @note 运行时用例：实际执行验证NaN 不等于自身
 */

function main(): void {
  let nan: double = 0.0 / 0.0
  if (nan == nan) { console.log("unexpected: NaN == NaN"); throw new Error("assertion") }
  console.log("verified")
}
