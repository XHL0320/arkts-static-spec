/**
 * @id EXP_07_7_34_0008_RUNTIME_GEN_8
 * @expect runtime
 * @section 7.34
 * @design 补充用例8
 * @note 运行时用例：实际执行验证补充用例8
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
