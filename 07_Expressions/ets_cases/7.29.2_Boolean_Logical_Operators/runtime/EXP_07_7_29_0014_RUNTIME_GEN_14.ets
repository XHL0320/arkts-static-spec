/**
 * @id EXP_07_7_29_0014_RUNTIME_GEN_14
 * @expect runtime
 * @section 7.29.2
 * @design 补充用例14
 * @note 运行时用例：实际执行验证补充用例14
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
