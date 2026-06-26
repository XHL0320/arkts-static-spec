/**
 * @id AMB_14_04_006_PASS_CLASS_METHODS
 * @expect compile-pass
 * @section 14.4
 * @design declare class 含方法声明（无体，有返回类型）
 * @note 正向用例：验证 ambient class 方法声明编译通过
 */
declare class WithMethods {
  foo(x: int): void
  bar(): string
  sum(a: int, b: int): int
}
