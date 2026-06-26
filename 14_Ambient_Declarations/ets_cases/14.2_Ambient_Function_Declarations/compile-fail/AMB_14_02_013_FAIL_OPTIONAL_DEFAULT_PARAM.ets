/**
 * @id AMB_14_02_013_FAIL_OPTIONAL_DEFAULT_PARAM
 * @expect compile-fail
 * @section 14.2
 * @design declare function 可选参数带默认值，违反 spec（参数不能有默认值）
 * @note 反向用例：ambient function 可选参数带默认值应产生编译时错误
 */
declare function bad5(x?: int = 5): void
