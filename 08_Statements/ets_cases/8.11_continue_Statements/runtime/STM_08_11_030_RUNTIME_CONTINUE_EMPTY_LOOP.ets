/**
 * @id STM_08_11_030_RUNTIME_CONTINUE_EMPTY_LOOP
 * @expect runtime
 * @section 8.11
 * @design continue 在空循环体中

 * @note 运行时用例：实际执行验证空循环体continue
 */
function main(): void {
  let i: int = 0
  while (i < 100) { i++; continue }
  if (i != 100) { throw new Error("assertion: continue should not affect count") }
  console.log("verified")
}
