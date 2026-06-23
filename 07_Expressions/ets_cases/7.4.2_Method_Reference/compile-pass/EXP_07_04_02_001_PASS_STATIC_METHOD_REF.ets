/**
 * @id EXP_07_04_02_001_PASS_STATIC_METHOD_REF
 * @expect compile-pass
 * @section 7.4.2
 * @design 静态方法引用：验证 C.foo 方式引用类的静态方法编译通过
 * @note 正向用例：验证静态方法引用基本语法编译通过
 */
class C {
  static foo(n: number): void {}
}

let m1 = C.foo  // 静态方法引用，类型为 (n: number) => void
