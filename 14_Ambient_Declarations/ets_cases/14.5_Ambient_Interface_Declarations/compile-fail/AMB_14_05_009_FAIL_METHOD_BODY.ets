/**
 * @id AMB_14_05_009_FAIL_METHOD_BODY
 * @expect compile-fail
 * @section 14.5
 * @design ambient interface 方法有实现体，违反 spec
 * @note 反向用例：ambient interface 方法带体应产生编译时错误
 */
declare interface Bad {
  foo(): void {}
}
