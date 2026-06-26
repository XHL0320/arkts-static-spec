/**
 * @id EXP_07_7_36_0015_RUNTIME_GEN_15
 * @expect runtime
 * @section 7.36
 * @design 补充用例15
 * @note 运行时用例：实际执行验证补充用例15
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
