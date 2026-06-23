/**
 * @id EXP_07_7_26_0021_RUNTIME_GEN_21
 * @expect runtime
 * @section 7.7_26
 * @design 补充用例21
 * @note 运行时用例：实际执行验证补充用例21
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
