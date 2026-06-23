/**
 * @id STM_08_04_029_RUNTIME_SHADOWING
 * @expect runtime
 * @section 8.4
 * @design 变量遮蔽运行时验证

 * @note 运行时用例：实际执行验证变量遮蔽
 */
function main(): void {
  let item: int = 123
  { const item: string = "shadow"
    if (item != "shadow") { throw new Error("assertion: shadow in block") } }
  if (item != 123) { throw new Error("assertion: original item") }
  console.log("verified")
}
