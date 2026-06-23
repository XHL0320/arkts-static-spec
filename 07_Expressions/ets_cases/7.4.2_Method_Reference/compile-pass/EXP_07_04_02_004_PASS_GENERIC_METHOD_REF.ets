/**
 * @id EXP_07_04_02_004_PASS_GENERIC_METHOD_REF
 * @expect compile-pass
 * @section 7.4.2
 * @design 泛型方法引用：验证带显式类型参数的泛型方法引用编译通过
 * @note 正向用例：验证 C().gen<string> 带显式类型参数的泛型方法引用编译通过
 */
class C {
  gen<T>(x: T): T {
    return x
  }
}

let a = new C().gen<string>  // OK，带显式类型参数的泛型方法引用
