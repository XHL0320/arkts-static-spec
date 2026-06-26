/**
 * @id AMB_14_08_004_PASS_GET_IN_NAMESPACE
 * @expect compile-pass
 * @section 14.8
 * @design declare get 在 namespace 中
 * @note 正向用例
 */
declare namespace A {
  get name(): string
}
