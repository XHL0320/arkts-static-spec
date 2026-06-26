/**
 * @id AMB_14_03_006_PASS_OVERLOAD_USE_IN_FUNCTION
 * @expect compile-pass
 * @section 14.3
 * @design declare overload 声明后，在普通函数中调用重载函数，验证编译通过
 * @note 正向用例：验证 ambient overload 函数调用的编译通过
 */
declare function g1(p: string): void
declare function g2(p: number): void
declare overload g {g1, g2}

function testOverload(): void {
  g("hello")
  g(42)
}
