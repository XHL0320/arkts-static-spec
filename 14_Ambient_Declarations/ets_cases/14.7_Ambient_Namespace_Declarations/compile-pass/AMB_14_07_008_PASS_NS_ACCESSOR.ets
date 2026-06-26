/**
 * @id AMB_14_07_008_PASS_NS_ACCESSOR
 * @expect compile-pass
 * @section 14.7
 * @design declare namespace 含 get/set 访问器
 * @note 正向用例
 */
declare namespace A {
  get name(): string
  set name(val: string)
}
