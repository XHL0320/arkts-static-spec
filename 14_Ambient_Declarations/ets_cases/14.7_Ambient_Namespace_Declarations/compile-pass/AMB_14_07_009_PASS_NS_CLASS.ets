/**
 * @id AMB_14_07_009_PASS_NS_CLASS
 * @expect compile-pass
 * @section 14.7
 * @design declare namespace 含 class 声明
 * @note 正向用例
 */
declare namespace A {
  class C {
    field: int
    method(): void
  }
}
