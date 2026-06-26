/**
 * @id EXP_07_7_26_0022_RUNTIME_GEN_22
 * @expect runtime
 * @section 7.26
 * @design 补充用例22
 * @note 运行时用例：实际执行验证补充用例22
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
