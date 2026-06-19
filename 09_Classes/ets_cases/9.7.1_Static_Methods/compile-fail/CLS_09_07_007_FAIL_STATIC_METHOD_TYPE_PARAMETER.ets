/**
 * @id CLS_09_07_007_FAIL_STATIC_METHOD_TYPE_PARAMETER
 * @expect compile-fail
 * @section 9.7.1
 * @design 静态方法的方法签名或方法体中不能使用外围类的类型参数
 * @note 反向用例：静态方法使用外围类泛型参数T作为返回类型、参数类型或局部变量类型导致编译错误
 */
class BadGeneric007<T> {
  static process(val: T): T {
    return val
  }

  static getDefault(): T {
    let result: T
    return result
  }

  static printType(): void {
    let label: T
  }
}
