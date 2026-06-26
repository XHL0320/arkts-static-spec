/**
 * @id EXP_07_7_29_0002_RUNTIME_GEN_2
 * @expect runtime
 * @section 7.29
 * @design 补充用例2
 * @note 运行时用例：实际执行验证补充用例2
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
