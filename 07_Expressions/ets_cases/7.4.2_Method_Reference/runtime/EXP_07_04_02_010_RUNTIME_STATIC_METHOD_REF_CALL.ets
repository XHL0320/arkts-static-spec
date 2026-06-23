/**
 * @id EXP_07_04_02_010_RUNTIME_STATIC_METHOD_REF_CALL
 * @expect runtime
 * @section 7.4.2
 * @design 静态方法引用调用验证：验证通过静态方法引用调用的返回值正确
 * @note 运行时用例：通过引用调用静态方法并断言
 */
class Calc {
  static add(a: int, b: int): int {
    return a + b
  }
}

function main(): void {
  let func = Calc.add
  let result = func(10, 20)

  if (result != 30) {
    throw new Error("assertion failed: Calc.add(10,20) = " + result)
  }
  console.log("verified")
}
