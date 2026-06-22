/**
 * @id STM_08_05_036_RUNTIME_IF_NESTED
 * @expect runtime
 * @section 8.5
 * @design 嵌套 if 语句执行顺序

 * @note 运行时用例：实际执行验证嵌套if
 */
function main(): void {
  let a: boolean = true; let b: boolean = false
  let result: int = 0
  if (a) { if (b) { result = 1 } else { result = 2 } }
  if (result != 2) { throw new Error("assertion: nested if-else") }
  console.log("verified")
}
