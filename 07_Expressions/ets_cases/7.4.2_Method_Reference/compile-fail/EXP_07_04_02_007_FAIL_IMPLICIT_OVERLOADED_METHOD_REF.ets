/**
 * @id EXP_07_04_02_007_FAIL_IMPLICIT_OVERLOADED_METHOD_REF
 * @expect compile-fail
 * @section 7.4.2
 * @design 隐式重载方法名引用：验证隐式重载方法名作为引用应产生编译时错误
 * @note 反向用例：bar 是隐式重载方法名，作为引用应报编译时错误
 */
class C {
  bar(n: number): void {}
  bar(s: string): void {}
}

let c = new C()
let b = c.bar  // Compile-time error: overloaded method name cannot be used as reference
