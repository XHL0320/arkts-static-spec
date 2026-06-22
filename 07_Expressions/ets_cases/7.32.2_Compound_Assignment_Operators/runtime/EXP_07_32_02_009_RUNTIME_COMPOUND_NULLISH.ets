/**
 * @id EXP_07_32_02_009_RUNTIME_COMPOUND_NULLISH
 * @expect runtime
 * @section 7.32.2
 * @design ??= 空值合并赋值（左侧 null/undefined 时赋值）
 * @note 运行时用例：实际执行验证 ??= 空值合并赋值
 */
function main(): void {
  let x: int | undefined = undefined
  x = x ?? 42
  if (x != 42) { throw new Error("assertion: should be 42") }
  x = x ?? 99
  if (x != 42) { throw new Error("assertion: should stay 42") }
  console.log("verified")
}
