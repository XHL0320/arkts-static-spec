/**
 * @id EXP2_17_14_013_RUNTIME_NESTED
 * @expect runtime
 * @section 17.14
 * @design 验证嵌套 trailing lambda 按正确顺序执行
 * @note 运行时用例：外层先执行，内层在外层回调中执行
 */
let g_outer_executed: boolean = false
let g_inner_executed: boolean = false

function outerFunc(callback: () => void): void {
  g_outer_executed = true
  callback()
}

function innerFunc(callback: () => void): void {
  g_inner_executed = true
  callback()
}

function main(): void {
  g_outer_executed = false
  g_inner_executed = false
  outerFunc() {
    innerFunc() {
      console.log("nested executed")
    }
  }
  if (!g_outer_executed) {
    throw new Error("assertion failed: outer not executed")
  }
  if (!g_inner_executed) {
    throw new Error("assertion failed: inner not executed")
  }
  console.log("verified: nested trailing lambdas executed correctly")
}
