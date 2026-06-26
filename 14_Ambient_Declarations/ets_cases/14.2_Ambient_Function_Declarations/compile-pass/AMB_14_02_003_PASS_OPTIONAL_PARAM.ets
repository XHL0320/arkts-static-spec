/**
 * @id AMB_14_02_003_PASS_OPTIONAL_PARAM
 * @expect compile-pass
 * @section 14.2
 * @design declare function 可选参数，返回 void，无函数体（spec 允许）
 * @note 正向用例：验证 ambient function 可选参数声明编译通过
 */
declare function baz(x?: string): void
