/**
 * @id EXP2_17_07_02_011_RUNTIME_BASIC_VERIFICATION
 * @expect runtime
 * @section 17.7.2
 * @design 运行时验证：$_instantiate 基本调用 C() 和 C.$_instantiate 返回正确实例
 * @note 运行时用例：验证短格式和显式调用均返回正确的类实例，两种方式结果等价
 */
class RuntimeFactory1 {
  tag: string = ""

  constructor(t: string = "") {
    this.tag = t
  }

  static $_instantiate(__factory: () => RuntimeFactory1): RuntimeFactory1 {
    let result: RuntimeFactory1 = __factory()
    result.tag = "instantiated"
    return result
  }
}

function main(): void {
  let obj1: RuntimeFactory1 = RuntimeFactory1()
  if (obj1.tag != "instantiated") {
    throw new Error("assertion failed: short form tag should be 'instantiated', got: " + obj1.tag)
  }

  let obj2: RuntimeFactory1 = RuntimeFactory1.$_instantiate(() => new RuntimeFactory1())
  if (obj2.tag != "instantiated") {
    throw new Error("assertion failed: explicit call tag should be 'instantiated', got: " + obj2.tag)
  }

  let obj3: RuntimeFactory1 = RuntimeFactory1.$_instantiate(() => new RuntimeFactory1("pre"))
  if (obj3.tag != "instantiated") {
    throw new Error("assertion failed: explicit with custom factory should have 'instantiated', got: " + obj3.tag)
  }

  console.log("EXP2_17_07_02_011: verified")
}
