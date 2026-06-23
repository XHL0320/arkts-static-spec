/**
 * @id EXP_07_27_5_RUNTIME_POSITIVE_ZERO_CMP
 * @expect runtime
 * @section 7.27
 * @design 正零与负零比较
 * @note 运行时用例：实际执行验证正零与负零比较
 */

function main(): void {
  let pz: double = 0.0; let nz: double = -0.0
  if (!(nz <= pz)) { throw new Error("assertion failed: -0.0 <= 0.0") }
  console.log("verified")
}
