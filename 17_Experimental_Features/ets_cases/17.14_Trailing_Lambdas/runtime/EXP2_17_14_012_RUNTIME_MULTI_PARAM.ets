/**
 * @id EXP2_17_14_012_RUNTIME_MULTI_PARAM
 * @expect runtime
 * @section 17.14
 * @design 验证有前置参数时 trailing lambda 的参数正确传递
 * @note 运行时用例：前置参数正确传递给函数，同时 trailing lambda 被执行
 */
let g_prefix_received: string = ""
let g_trailing_executed: boolean = false

function processWithParams(prefix: string, callback: () => void): void {
  g_prefix_received = prefix
  callback()
}

function main(): void {
  g_prefix_received = ""
  g_trailing_executed = false
  processWithParams("hello") { g_trailing_executed = true }
  if (g_prefix_received != "hello") {
    throw new Error("assertion failed: prefix not received, got '" + g_prefix_received + "'")
  }
  if (!g_trailing_executed) {
    throw new Error("assertion failed: trailing lambda not executed")
  }
  console.log("verified: prefix='" + g_prefix_received + "', trailing executed")
}
