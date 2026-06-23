/**
 * @id EXP2_17_07_02_010_FAIL_GENERIC_TYPE_PARAM_ACCESS
 * @expect compile-fail
 * @section 17.7.2
 * @design $_instantiate 是静态方法，不能访问泛型类的类型参数。在 $_instantiate 签名中引用类泛型类型参数应编译失败
 * @note 反向用例：验证 $_instantiate 签名中引用泛型类的类型参数时编译失败
 */
class MyFailFactory4<T> {
  value: T | null = null

  constructor() {}

  static $_instantiate(__factory: () => MyFailFactory4<T>, val: T): MyFailFactory4<T> {
    let result: MyFailFactory4<T> = __factory()
    result.value = val
    return result
  }
}
