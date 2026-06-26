/**
 * @id AMB_14_07_005_PASS_NS_MIXED_MEMBERS
 * @expect compile-pass
 * @section 14.7
 * @design declare namespace 含多种成员（function + variable + class + interface）
 * @note 正向用例
 */
declare namespace A {
  function foo(): void
  let x: int
  class C { field: int }
  interface I { method(): void }
}
