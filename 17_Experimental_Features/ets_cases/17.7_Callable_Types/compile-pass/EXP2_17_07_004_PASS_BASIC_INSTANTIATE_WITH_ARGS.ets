/**
 * @id EXP2_17_07_004_PASS_BASIC_INSTANTIATE_WITH_ARGS
 * @expect compile-pass
 * @section 17.7
 * @design 类声明 static $_instantiate(f: () => Self, name: string): Self，带参工厂调用
 * @note 正向用例：验证静态 $_instantiate 带工厂参数和业务参数使类变为可调用，编译通过
 */
class NamedFactory {
  name: string = "default"
  static $_instantiate(f: () => NamedFactory, name: string): NamedFactory {
    let obj: NamedFactory = f()
    obj.name = name
    return obj
  }
}

function testInstantiateWithArgs(): void {
  let obj: NamedFactory = NamedFactory("hello")
  let obj2: NamedFactory = NamedFactory.$_instantiate(() => new NamedFactory(), "hello")
}
