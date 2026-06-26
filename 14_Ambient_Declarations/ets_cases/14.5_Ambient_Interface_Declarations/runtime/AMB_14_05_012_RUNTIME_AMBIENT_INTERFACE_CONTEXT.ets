/**
 * @id AMB_14_05_012_RUNTIME_AMBIENT_INTERFACE_CONTEXT
 * @expect runtime
 * @section 14.5
 * @design ambient interface 与 main 共存，验证不影响编译执行
 * @note 运行时用例：验证 ambient interface 不影响其他代码运行
 */
declare interface External {
  getId(): int
}

function main(): void {
  let x: int = 10
  if (x != 10) {
    throw new Error("assertion failed")
  }
  console.log("verified")
}
