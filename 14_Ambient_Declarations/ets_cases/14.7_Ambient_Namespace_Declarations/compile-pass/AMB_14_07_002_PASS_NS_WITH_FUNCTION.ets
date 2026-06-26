/**
 * @id AMB_14_07_002_PASS_NS_WITH_FUNCTION
 * @expect compile-pass
 * @section 14.7
 * @design declare namespace 含 export function
 * @note 正向用例
 */
declare namespace A {
  export function foo(): void
}
