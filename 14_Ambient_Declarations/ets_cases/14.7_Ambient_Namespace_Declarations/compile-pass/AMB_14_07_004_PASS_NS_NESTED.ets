/**
 * @id AMB_14_07_004_PASS_NS_NESTED
 * @expect compile-pass
 * @section 14.7
 * @design declare namespace 嵌套 namespace
 * @note 正向用例：验证嵌套 namespace 编译通过
 */
declare namespace A {
  export namespace B {
    export function foo(): void
  }
}
