/**
 * @id EXP_07_31_006_RUNTIME_COND_OR_VS_BITWISE
 * @expect runtime
 * @section 7.31
 * @design || 与 | 在 boolean 上结果相同但求值方式不同

 * @note 运行时用例：实际执行验证|| vs | 对比
 */
let bitwiseEval: boolean = false
function checkEval(): boolean { bitwiseEval = true; return true }
function main(): void {
  let r1: boolean = true | checkEval()
  if (!bitwiseEval) { throw new Error("assertion: | should evaluate both sides") }
  bitwiseEval = false
  let r2: boolean = true || checkEval()
  if (bitwiseEval) { throw new Error("assertion: || should short-circuit") }
  if (r1 != r2) { throw new Error("assertion: | and || should produce same result on booleans") }
  console.log("verified")
}
