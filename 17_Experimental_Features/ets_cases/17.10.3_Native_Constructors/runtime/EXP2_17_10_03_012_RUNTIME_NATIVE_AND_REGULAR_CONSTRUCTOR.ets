/**
 * @id EXP2_17_10_03_012_RUNTIME_NATIVE_AND_REGULAR_CONSTRUCTOR
 * @expect runtime
 * @section 17.10.3
 * @design native 与普通构造函数共存的类运行时验证：通过普通构造函数实例化，验证属性和方法访问
 * @note 运行时用例：验证包含 native 和普通构造函数的类可通过普通构造函数正常实例化和使用
 */
class MixedCtorRuntime {
  x_val: int = 0
  y_val: double = 0.0

  native constructor()

  constructor(val: int) {
    this.x_val = val
    this.y_val = val.toDouble() * 2.0
  }

  getValue(): int {
    return this.x_val
  }

  getDouble(): double {
    return this.y_val
  }
}

function main(): void {
  let obj: MixedCtorRuntime = new MixedCtorRuntime(21)
  if (obj.getValue() != 21) {
    throw new Error("assertion failed: expected 21, got " + obj.getValue())
  }
  if (obj.getDouble() != 42.0) {
    throw new Error("assertion failed: expected 42.0, got " + obj.getDouble())
  }
  console.log("verified")
}
