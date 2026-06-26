/**
 * @id AMB_14_07_010_PASS_NS_INTERFACE
 * @expect compile-pass
 * @section 14.7
 * @design declare namespace 含 interface 声明
 * @note 正向用例
 */
declare namespace A {
  interface I {
    method(): void
  }
}
