/**
 * @id EXP_07_7_32_0009_RUNTIME_GEN_9
 * @expect runtime
 * @section 7.32.3
 * @design 补充用例9
 * @note 运行时用例：实际执行验证补充用例9
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
