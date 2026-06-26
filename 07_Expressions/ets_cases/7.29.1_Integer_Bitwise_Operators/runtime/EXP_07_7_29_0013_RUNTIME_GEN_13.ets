/**
 * @id EXP_07_7_29_0013_RUNTIME_GEN_13
 * @expect runtime
 * @section 7.29.1
 * @design 补充用例13
 * @note 运行时用例：实际执行验证补充用例13
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
