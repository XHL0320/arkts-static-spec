/**
 * @id EXP_07_7_28_0010_RUNTIME_GEN_10
 * @expect runtime
 * @section 7.28.2
 * @design 补充用例10
 * @note 运行时用例：实际执行验证补充用例10
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
