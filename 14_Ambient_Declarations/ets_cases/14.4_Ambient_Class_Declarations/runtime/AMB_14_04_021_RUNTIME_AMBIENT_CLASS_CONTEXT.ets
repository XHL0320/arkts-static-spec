/**
 * @id AMB_14_04_021_RUNTIME_AMBIENT_CLASS_CONTEXT
 * @expect runtime
 * @section 14.4
 * @design ambient class 声明与带 main 的正常代码共存，
 *          验证不影响编译和执行
 * @note 运行时用例：验证 ambient class 声明不影响其他代码运行
 */
declare class ExternalClass {
  id: int
  getName(): string
}

function main(): void {
  let x: int = 100
  if (x != 100) {
    throw new Error("assertion failed: " + x)
  }
  console.log("verified")
}
