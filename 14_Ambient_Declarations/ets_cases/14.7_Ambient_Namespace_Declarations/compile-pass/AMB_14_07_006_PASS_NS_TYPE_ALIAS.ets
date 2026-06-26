/**
 * @id AMB_14_07_006_PASS_NS_TYPE_ALIAS
 * @expect compile-pass
 * @section 14.7
 * @design declare namespace 含 type alias
 * @note 正向用例
 */
declare namespace A {
  type X = int
}
