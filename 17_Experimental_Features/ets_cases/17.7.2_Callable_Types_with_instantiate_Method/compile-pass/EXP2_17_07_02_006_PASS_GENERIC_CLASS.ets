/**
 * @id EXP2_17_07_02_006_PASS_GENERIC_CLASS
 * @expect compile-pass
 * @section 17.7.2
 * @design 泛型类中的 $_instantiate：静态方法不能引用类泛型类型参数，必须使用具体类型
 * @note 正向用例：验证泛型类声明 $_instantiate（签名中使用具体类型，不引用类泛型参数）编译通过
 */
class MyFactory6 {
  value: string = ""

  constructor(v: string = "") {
    this.value = v
  }

  static $_instantiate(__factory: () => MyFactory6): MyFactory6 {
    return __factory()
  }

  static $_instantiate(__factory: () => MyFactory6, val: string): MyFactory6 {
    let result: MyFactory6 = __factory()
    result.value = val
    return result
  }
}

function testGenericClass(): void {
  let obj: MyFactory6 = MyFactory6()
  let obj2: MyFactory6 = MyFactory6("typed")
}
