/**
 * @id EXP_07_28_6_RUNTIME_NEG_ZERO_EQ
 * @expect runtime
 * @section 7.28
 * @design 正负零相等运行时
 * @note 运行时用例：实际执行验证正负零相等运行时
 */

function main(): void {
  let pz: double = 0.0; let nz: double = -0.0
  if (pz != nz) { throw new Error("assertion: +0 == -0") }
  console.log("verified")
}
