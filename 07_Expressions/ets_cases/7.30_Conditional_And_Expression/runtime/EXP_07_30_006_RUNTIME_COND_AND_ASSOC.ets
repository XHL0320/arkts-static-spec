/**
 * @id EXP_07_30_006_RUNTIME_COND_AND_ASSOC
 * @expect runtime
 * @section 7.30
 * @design && 结合律运行时验证

 * @note 运行时用例：实际执行验证&& 结合律
 */
function main(): void {
  let a: boolean = true; let b: boolean = false; let c: boolean = true
  let r1: boolean = (a && b) && c; let r2: boolean = a && (b && c)
  if (r1 != r2) { throw new Error("assertion: (a&&b)&&c should equal a&&(b&&c)") }
  console.log("verified")
}
