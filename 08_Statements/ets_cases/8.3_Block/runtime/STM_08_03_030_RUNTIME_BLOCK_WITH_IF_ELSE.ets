/**
 * @id STM_08_03_030_RUNTIME_BLOCK_WITH_IF_ELSE
 * @expect runtime
 * @section 8.3
 * @design if-else 与块作用域组合

 * @note 运行时用例：实际执行验证if-else块
 */
function main(): void {
  let x: int = 0
  if (true) { let y: int = 10; x = y } else { let z: int = 20; x = z }
  if (x != 10) { throw new Error("assertion: true branch") }
  console.log("verified")
}
