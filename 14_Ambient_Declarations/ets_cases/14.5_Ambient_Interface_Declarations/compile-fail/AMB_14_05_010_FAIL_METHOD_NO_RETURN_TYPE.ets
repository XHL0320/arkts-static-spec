/**
 * @id AMB_14_05_010_FAIL_METHOD_NO_RETURN_TYPE
 * @expect compile-fail
 * @section 14.5
 * @design ambient interface 方法无显式返回类型，违反 spec
 * @note 反向用例：ambient interface 方法无返回类型应产生编译时错误
 */
declare interface Bad {
  foo(x: int)
}
