/**
 * @id EXP2_17_07_006_PASS_MULTIPLE_INSTANTIATE_OVERLOADS
 * @expect compile-pass
 * @section 17.7
 * @design 类可拥有多个不同签名的 $_instantiate 重载实现，每个需带工厂参数
 * @note 正向用例：验证多个 $_instantiate 重载（不同业务参数类型）编译通过
 */
class OverloadedFactory {
  tag: string = ""
  count: int = 0
  static $_instantiate(f: () => OverloadedFactory): OverloadedFactory {
    return f()
  }
  static $_instantiate(f: () => OverloadedFactory, tag: string): OverloadedFactory {
    let obj: OverloadedFactory = f()
    obj.tag = tag
    return obj
  }
  static $_instantiate(f: () => OverloadedFactory, count: int): OverloadedFactory {
    let obj: OverloadedFactory = f()
    obj.count = count
    return obj
  }
}

function testOverloadedInstantiate(): void {
  let obj0: OverloadedFactory = OverloadedFactory()
  let obj1: OverloadedFactory = OverloadedFactory("test")
  let obj2: OverloadedFactory = OverloadedFactory(42)
}
