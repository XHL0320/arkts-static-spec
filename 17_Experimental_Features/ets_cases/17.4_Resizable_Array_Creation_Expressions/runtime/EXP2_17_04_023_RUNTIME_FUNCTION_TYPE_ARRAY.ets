/**
 * @id EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY
 * @expect runtime
 * @section 17.4
 * @design 函数类型数组运行时验证：验证函数类型数组在运行时正确创建且元素可调用
 * @note 运行时用例：实际执行验证函数类型数组长度和元素函数可正常调用
 */
type FnType = () => int

function main(): void {
  let arr = new FnType[3]((): int => { return 42 })
  if (arr.length != 3) {
    throw new Error("assertion failed: array length should be 3")
  }

  // 验证数组中的函数可以正常调用
  let result: int = arr[0]()
  if (result != 42) {
    throw new Error("assertion failed: arr[0]() should return 42")
  }

  let result2: int = arr[1]()
  if (result2 != 42) {
    throw new Error("assertion failed: arr[1]() should return 42")
  }

  let result3: int = arr[2]()
  if (result3 != 42) {
    throw new Error("assertion failed: arr[2]() should return 42")
  }

  console.log("PASS: function type array runtime check passed")
}
