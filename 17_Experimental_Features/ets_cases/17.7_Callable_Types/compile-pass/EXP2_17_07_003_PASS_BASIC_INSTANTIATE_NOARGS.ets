/**
 * @id EXP2_17_07_003_PASS_BASIC_INSTANTIATE_NOARGS
 * @expect compile-pass
 * @section 17.7
 * @design 类声明 static $_instantiate(f: () => Self): Self，类名可作为工厂函数调用 C()
 * @note 正向用例：验证静态 $_instantiate 带工厂参数使类变为可调用（工厂模式），编译通过
 */
class FactoryCallable {
  value: int = 0
  static $_instantiate(f: () => FactoryCallable): FactoryCallable {
    return f()
  }
}

function testInstantiate(): void {
  let obj: FactoryCallable = FactoryCallable()
  let obj2: FactoryCallable = FactoryCallable.$_instantiate(() => new FactoryCallable())
}
