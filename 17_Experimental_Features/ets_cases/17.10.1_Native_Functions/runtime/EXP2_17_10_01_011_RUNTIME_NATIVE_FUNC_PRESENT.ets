/**
 * @id EXP2_17_10_01_011_RUNTIME_NATIVE_FUNC_PRESENT
 * @expect runtime
 * @section 17.10.1
 * @design 原生函数声明存在性验证：声明 native function 后，不调用它，程序可正常编译并运行
 * @note 运行时用例：验证 native function 声明不影响程序正常执行
 */
native function platformGetVersion(): string
function main(): void {
  // Only declaring native function, not calling it
  // The program should compile and run without error
  let msg: string = "native function declared successfully"
  if (msg != "native function declared successfully") {
    throw new Error("assertion failed: expected success message")
  }
  console.log(msg)
}
