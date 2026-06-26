/**
 * @id AMB_14_04_018_FAIL_METHOD_NO_RETURN_TYPE
 * @expect compile-fail
 * @section 14.4
 * @design ambient class 方法无显式返回类型，违反 spec
 * @note 反向用例：ambient class 方法无返回类型应产生编译时错误
 */
declare class NoReturnMethod {
  foo(x: int)
}
