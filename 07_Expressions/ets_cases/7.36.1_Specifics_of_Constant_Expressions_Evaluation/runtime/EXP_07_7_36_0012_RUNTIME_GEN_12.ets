/**
 * @id EXP_07_7_36_0012_RUNTIME_GEN_12
 * @expect runtime
 * @section 7.7_36
 * @design 补充用例12
 * @note 运行时用例：实际执行验证补充用例12
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
