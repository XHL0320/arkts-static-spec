/**
 * @id EXP2_17_07_013_RUNTIME_INSTANTIATE_RETURN_INSTANCE
 * @expect runtime
 * @section 17.7
 * @design 通过 C() 简写调用 $_instantiate(factory)，返回正确类实例
 * @note 运行时用例：验证 $_instantiate 调用返回 correct class instance
 */
class InstanceFactory {
  tag: string = "factory"
  static $_instantiate(f: () => InstanceFactory): InstanceFactory {
    let obj: InstanceFactory = f()
    return obj
  }
}

function main(): void {
  let obj: InstanceFactory = InstanceFactory()
  if (obj.tag != "factory") {
    throw new Error("assertion failed: expected 'factory', got " + obj.tag)
  }
  console.log("PASS: instantiate returned correct instance")
}
