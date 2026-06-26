/**
 * @id AMB_14_02_009_FAIL_NO_RETURN_TYPE
 * @expect compile-fail
 * @section 14.2
 * @design declare function 无显式返回类型，违反 spec
 * @note 反向用例：ambient function 无返回类型应产生编译时错误
 */
declare function bad1(x: number)
