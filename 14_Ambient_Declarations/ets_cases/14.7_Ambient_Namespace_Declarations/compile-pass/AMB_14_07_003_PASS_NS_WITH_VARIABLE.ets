/**
 * @id AMB_14_07_003_PASS_NS_WITH_VARIABLE
 * @expect compile-pass
 * @section 14.7
 * @design declare namespace 含 export let 变量
 * @note 正向用例
 */
declare namespace A {
  export let x: int
}
