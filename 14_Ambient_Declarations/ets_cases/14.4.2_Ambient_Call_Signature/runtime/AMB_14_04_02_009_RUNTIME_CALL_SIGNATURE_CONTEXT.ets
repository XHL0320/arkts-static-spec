/**
 * @id AMB_14_04_02_009_RUNTIME_CALL_SIGNATURE_CONTEXT
 * @expect runtime
 * @section 14.4.2
 * @design ambient class 含 call signature 与 main 共存
 * @note 运行时用例：验证 call signature 不影响其他代码运行
 */
declare class Callable {
  (x: string): void
}

function main(): void {
  let n: int = 42
  if (n != 42) {
    throw new Error("assertion failed: " + n)
  }
  console.log("verified")
}
