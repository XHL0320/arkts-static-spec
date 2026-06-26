/**
 * @id AMB_14_07_011_FAIL_EXPORT_NONEXISTENT
 * @expect compile-fail
 * @section 14.7
 * @design declare namespace 中 exportDirective 引用不存在的 foo，违反 spec
 * @note 反向用例
 */
function foo() {}

declare namespace A {
  export {foo}
}
