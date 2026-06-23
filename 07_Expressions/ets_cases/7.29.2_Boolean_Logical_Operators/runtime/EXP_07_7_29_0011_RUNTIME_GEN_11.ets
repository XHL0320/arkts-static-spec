/**
 * @id EXP_07_7_29_0011_RUNTIME_GEN_11
 * @expect runtime
 * @section 7.7_29
 * @design 补充用例11
 * @note 运行时用例：实际执行验证补充用例11
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
