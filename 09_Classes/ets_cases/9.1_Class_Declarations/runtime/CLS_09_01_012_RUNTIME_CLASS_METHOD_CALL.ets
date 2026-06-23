/**
 * @id CLS_09_01_012_RUNTIME_CLASS_METHOD_CALL
 * @expect runtime
 * @section 9.1
 * @design 类方法调用验证
 * @note 运行时用例：验证类方法调用执行正确
 */
class Calc {
  add(a: int, b: int): int {
    return a + b
  }
  mul(a: int, b: int): int {
    return a * b
  }
}

function main(): void {
  let c = new Calc()
  if (c.add(2, 3) != 5) {
    throw new Error("add(2,3) should be 5")
  }
  if (c.mul(4, 5) != 20) {
    throw new Error("mul(4,5) should be 20")
  }
  console.log("Class method call verified")
}

