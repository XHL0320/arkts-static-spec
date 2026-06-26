/**
 * @id AMB_14_02_015_FAIL_DEFAULT_PARAM_BOOL
 * @expect compile-fail
 * @section 14.2
 * @design declare function 布尔参数默认值，违反 spec（无论默认值类型）
 * @note 反向用例：ambient function 参数带布尔默认值应产生编译时错误
 */
declare function bad7(x: boolean = true): void
