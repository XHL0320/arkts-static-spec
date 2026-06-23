/**
 * @id STM_08_03_029_RUNTIME_BLOCK_RETURN_FROM_BLOCK
 * @expect runtime
 * @section 8.3
 * @design 从块中 return 返回函数

 * @note 运行时用例：实际执行验证块中return
 */
function blockReturn(): int { { return 42 } }
function main(): void {
  let r: int = blockReturn()
  if (r != 42) { throw new Error("assertion: return from block") }
  console.log("verified")
}
