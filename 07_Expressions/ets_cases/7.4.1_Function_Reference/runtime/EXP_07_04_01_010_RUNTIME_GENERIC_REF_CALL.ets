/**
 * @id EXP_07_04_01_010_RUNTIME_GENERIC_REF_CALL
 * @expect runtime
 * @section 7.4.1
 * @design 泛型函数引用调用结果验证：验证通过泛型函数引用调用的返回值正确
 * @note 运行时用例：通过带显式类型参数的泛型函数引用调用并断言
 */
function identity<T>(x: T): T {
  return x
}

function main(): void {
  let id = identity<int>
  let result = id(42)

  if (result != 42) {
    throw new Error("assertion failed: identity<int>(42) = " + result)
  }
  console.log("verified")
}
