/**
 * @id EXP2_17_07_02_008_FAIL_NO_PARAMETERLESS_CONSTRUCTOR
 * @expect compile-fail
 * @section 17.7.2
 * @design 类没有无参数构造函数时，短格式 C() 调用因编译器无法生成隐式工厂而产生编译时错误
 * @note 反向用例：验证没有无参数构造函数的类使用短格式调用时编译失败
 */
class MyFailFactory2 {
  data: int = 0

  constructor(x: int) {
    this.data = x
  }

  static $_instantiate(__factory: () => MyFailFactory2): MyFailFactory2 {
    return __factory()
  }
}

function testNoParamlessConstructor(): void {
  let obj: MyFailFactory2 = MyFailFactory2()
}
