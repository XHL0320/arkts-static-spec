/**
 * @id EXP_07_04_02_011_RUNTIME_GENERIC_METHOD_REF_CALL
 * @expect runtime
 * @section 7.4.2
 * @design 泛型方法引用调用验证：验证通过泛型方法引用调用的返回值正确
 * @note 运行时用例：通过显式类型参数的泛型方法引用调用并断言
 */
class Wrapper {
  identity<T>(x: T): T {
    return x
  }
}

function main(): void {
  let b = new Wrapper()
  let id = b.identity<int>
  let result = id(99)

  if (result != 99) {
    throw new Error("assertion failed: identity<int>(99) = " + result)
  }
  console.log("verified")
}
