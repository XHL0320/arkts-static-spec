/**
 * @id EXP2_17_07_02_003_PASS_EXPLICIT_CALL
 * @expect compile-pass
 * @section 17.7.2
 * @design 显式调用 $_instantiate：C.$_instantiate(factory, ...) 显式传递自定义工厂函数
 * @note 正向用例：验证显式 $_instantiate 调用（传自定义工厂）编译通过
 */
class MyFactory3 {
  value: int = 0

  constructor(v: int = 0) {
    this.value = v
  }

  static $_instantiate(__factory: () => MyFactory3, initVal: int): MyFactory3 {
    let result: MyFactory3 = __factory()
    result.value = initVal
    return result
  }
}

function makeFactory3WithVal(v: int): () => MyFactory3 {
  return (): MyFactory3 => {
    return new MyFactory3(v)
  }
}

function testExplicitCall(): void {
  let obj1: MyFactory3 = MyFactory3(42)
  let customFactory: () => MyFactory3 = makeFactory3WithVal(100)
  let obj2: MyFactory3 = MyFactory3.$_instantiate(customFactory, 200)
}
