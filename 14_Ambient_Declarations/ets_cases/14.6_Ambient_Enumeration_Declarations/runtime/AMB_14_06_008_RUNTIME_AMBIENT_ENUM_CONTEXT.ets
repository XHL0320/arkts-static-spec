/**
 * @id AMB_14_06_008_RUNTIME_AMBIENT_ENUM_CONTEXT
 * @expect runtime
 * @section 14.6
 * @design ambient enum 与 main 共存，验证不影响编译执行
 * @note 运行时用例：验证 ambient enum 不影响其他代码运行
 */
declare enum Status {Active, Inactive}

function main(): void {
  let x: int = 1
  if (x != 1) {
    throw new Error("assertion failed")
  }
  console.log("verified")
}
