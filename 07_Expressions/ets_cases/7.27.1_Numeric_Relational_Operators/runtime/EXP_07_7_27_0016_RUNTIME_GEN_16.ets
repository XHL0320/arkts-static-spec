/**
 * @id EXP_07_7_27_0016_RUNTIME_GEN_16
 * @expect runtime
 * @section 7.27.1
 * @design 补充用例16
 * @note 运行时用例：实际执行验证补充用例16
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}
