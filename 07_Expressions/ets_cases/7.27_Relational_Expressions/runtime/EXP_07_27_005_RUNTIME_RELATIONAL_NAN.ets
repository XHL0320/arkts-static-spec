/**
 * @id EXP_07_27_005_RUNTIME_RELATIONAL_NAN
 * @expect runtime
 * @section 7.27
 * @design NaN 关系比较永远返回 false

 * @note 运行时用例：实际执行验证NaN 关系比较行为
 */
function main(): void {
  let nan: double = 0.0 / 0.0
  let c1: boolean = nan < 0.0
  let c2: boolean = nan > 0.0
  let c3: boolean = nan <= 0.0
  let c4: boolean = nan >= 0.0
  if (c1 || c2 || c3 || c4) {
    throw new Error("assertion failed: NaN comparisons should all be false")
  }
  console.log("verified")
}
