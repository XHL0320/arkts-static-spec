/**
 * @id AMB_14_02_011_FAIL_FUNC_BODY
 * @expect compile-fail
 * @section 14.2
 * @design declare function 有函数体，违反 spec
 * @note 反向用例：ambient function 带函数体应产生编译时错误
 */
declare function bad3(): void {}
