/**
 * @id AMB_14_02_014_FAIL_MULTI_DEFAULT_PARAM
 * @expect compile-fail
 * @section 14.2
 * @design declare function 多参数中部分有默认值，违反 spec
 * @note 反向用例：ambient function 多参数含默认值应产生编译时错误
 */
declare function bad6(a: int, b: string = "x"): void
