/**
 * @id EXP_07_29_02_005_RUNTIME_BOOL_TRUTH_TABLE
 * @expect runtime
 * @section 7.29.2
 * @design 布尔逻辑真值表完整验证

 * @note 运行时用例：实际执行验证布尔逻辑真值表
 */
function main(): void {
  let t: boolean = true; let f: boolean = false
  if ((t & t) != true) { throw new Error("assertion: T&T") }
  if ((t & f) != false) { throw new Error("assertion: T&F") }
  if ((t | f) != true) { throw new Error("assertion: T|F") }
  if ((f | f) != false) { throw new Error("assertion: F|F") }
  if ((t ^ t) != false) { throw new Error("assertion: T^T") }
  if ((t ^ f) != true) { throw new Error("assertion: T^F") }
  console.log("verified")
}
