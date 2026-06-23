/**
 * @id EXP2_17_14_010_RUNTIME_EXECUTION
 * @expect runtime
 * @section 17.14
 * @design 通过全局标志验证 trailing lambda 实际被执行
 * @note 运行时用例：验证 trailing lambda 体被调用执行
 */
let g_executed: boolean = false

function runCallback(callback: () => void): void {
  callback()
}

function main(): void {
  g_executed = false
  runCallback() { g_executed = true }
  if (!g_executed) {
    throw new Error("assertion failed: trailing lambda was not executed")
  }
  console.log("verified: trailing lambda executed")
}
