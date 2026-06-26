/**
 * @id AMB_14_05_003_PASS_INTERFACE_METHODS
 * @expect compile-pass
 * @section 14.5
 * @design declare interface 含方法声明（无体，有返回类型）
 * @note 正向用例：验证 ambient interface 方法声明编译通过
 */
declare interface WithMethods {
  foo(x: int): void
  bar(): string
}
