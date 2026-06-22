/**
 * @id STM_08_03_027_RUNTIME_BLOCK_SCOPE_CLEANUP
 * @expect runtime
 * @section 8.3
 * @design 块作用域变量离开块后不可访问

 * @note 运行时用例：实际执行验证块作用域清理
 */
function main(): void {
  let a: int = 0
  { let b: int = 42; a = b }
  if (a != 42) { throw new Error("assertion: a captured b value") }
  console.log("verified")
}
