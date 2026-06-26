/**
 * @id EXP_07_7_36_0006_RUNTIME_GEN_6
 * @expect runtime
 * @section 7.36.1
 * @design 补充用例6
 * @note 运行时用例：实际执行验证补充用例6
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
