/**
 * @id STM_08_04_027_RUNTIME_CONST_IMMUTABLE
 * @expect runtime
 * @section 8.4
 * @design const 变量不可变性验证

 * @note 运行时用例：实际执行验证const不可变
 */
function main(): void {
  const x: int = 100
  let y: int = x + 50
  if (x != 100) { throw new Error("assertion: const unchanged") }
  if (y != 150) { throw new Error("assertion: y = x+50") }
  console.log("verified")
}
