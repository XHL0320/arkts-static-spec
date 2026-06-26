/**
 * @id AMB_14_04_008_PASS_CLASS_METHOD_OVERLOAD
 * @expect compile-pass
 * @section 14.4
 * @design declare class 含方法显式重载（overload）
 * @note 正向用例：验证 ambient class 方法重载编译通过
 */
declare class WithOverload {
  foo1(p: string): void
  foo2(p: number): void
  overload foo {foo1, foo2}
}
