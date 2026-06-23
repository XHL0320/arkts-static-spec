/**
 * @id EXP2_17_14_011_RUNTIME_RETURN_VALUE
 * @expect runtime
 * @section 17.14
 * @design 验证 trailing lambda 的返回值被正确接收
 * @note 运行时用例：compute 函数接收 trailing lambda 返回的 int 值
 */
let g_result: int = 0

function computeAndStore(callback: () => int): void {
  g_result = callback()
}

function main(): void {
  g_result = 0
  computeAndStore() { return 42 }
  if (g_result != 42) {
    throw new Error("assertion failed: expected 42, got " + g_result)
  }
  console.log("verified: trailing lambda returned " + g_result)
}
