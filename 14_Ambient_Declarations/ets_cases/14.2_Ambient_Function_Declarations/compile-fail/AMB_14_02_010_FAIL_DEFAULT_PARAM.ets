/**
 * @id AMB_14_02_010_FAIL_DEFAULT_PARAM
 * @expect compile-fail
 * @section 14.2
 * @design declare function 参数有默认值，违反 spec
 * @note 反向用例：ambient function 参数带默认值应产生编译时错误
 */
declare function bad2(y: number = 1): void
