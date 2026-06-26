/**
 * @id AMB_14_03_002_PASS_NAMESPACE_OVERLOAD
 * @expect compile-pass
 * @section 14.3
 * @design declare overload 在 namespace 内的函数重载
 * @note 正向用例：验证 namespace 内 ambient overload 声明编译通过
 */
declare namespace N {
  function foo1(p: string): void
  function foo2(p: number): void
  overload foo {foo1, foo2}
}
