/**
 * @id AMB_14_03_012_RUNTIME_AMBIENT_OVERLOAD_CONTEXT
 * @expect runtime
 * @section 14.3
 * @design ambient overload 声明与带 main 的正常代码共存，
 *          验证不影响编译和执行
 * @note 运行时用例：验证 ambient overload 声明不影响其他代码运行
 */
declare function f1(p: string): void
declare function f2(p: number): void
declare overload f {f1, f2}

function main(): void {
  let x: int = 10
  let y: int = 20
  let sum: int = x + y
  if (sum != 30) {
    throw new Error("assertion failed: " + sum)
  }
  console.log("verified")
}
