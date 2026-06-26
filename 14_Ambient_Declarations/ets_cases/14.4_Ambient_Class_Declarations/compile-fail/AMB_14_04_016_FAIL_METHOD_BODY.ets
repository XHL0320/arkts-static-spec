/**
 * @id AMB_14_04_016_FAIL_METHOD_BODY
 * @expect compile-fail
 * @section 14.4
 * @design ambient class 方法有实现体，违反 spec：ambient method 不能有体
 * @note 反向用例：ambient class 方法带体应产生编译时错误
 */
declare class BadMethod {
  foo(): void {}
}
