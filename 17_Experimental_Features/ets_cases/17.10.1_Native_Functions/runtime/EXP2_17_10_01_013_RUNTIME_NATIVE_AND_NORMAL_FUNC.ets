/**
 * @id EXP2_17_10_01_013_RUNTIME_NATIVE_AND_NORMAL_FUNC
 * @expect runtime
 * @section 17.10.1
 * @design 原生函数与普通函数共存：验证 native function 可以与普通函数在同一模块中声明，普通函数正常执行
 * @note 运行时用例：验证 native function 声明不影响普通函数的执行
 */
native function nativeGetData(): string
function normalGetData(): string {
  return "data from normal function"
}
function main(): void {
  let result: string = normalGetData()
  if (result != "data from normal function") {
    throw new Error("assertion failed: expected normal function to return data")
  }
  console.log(result)
}
