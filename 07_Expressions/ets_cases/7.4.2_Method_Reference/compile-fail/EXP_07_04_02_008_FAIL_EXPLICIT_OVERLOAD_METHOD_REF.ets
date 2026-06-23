/**
 * @id EXP_07_04_02_008_FAIL_EXPLICIT_OVERLOAD_METHOD_REF
 * @expect compile-fail
 * @section 7.4.2
 * @design 显式重载方法名称引用：验证显式重载方法名称作为引用应产生编译时错误
 * @note 反向用例：foo 是显式重载方法名，作为引用应报编译时错误
 */
class C {
  foo1(n: number): void {}
  foo2(s: string): void {}
  overload foo { foo1, foo2 }
}

let c = new C()
let f = c.foo  // Compile-time error: explicit overload name cannot be used as reference
