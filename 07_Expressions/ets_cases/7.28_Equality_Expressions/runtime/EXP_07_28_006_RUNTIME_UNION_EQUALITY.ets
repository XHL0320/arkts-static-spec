/**
 * @id EXP_07_28_006_RUNTIME_UNION_EQUALITY
 * @expect runtime
 * @section 7.28
 * @design 联合类型相等运行时验证

 * @note 运行时用例：实际执行验证联合类型相等
 */
function main(): void {
  let x: int | string = 5; let y: int | string = 5
  if (x != y) { throw new Error("assertion failed: union equality") }
  console.log("verified")
}
