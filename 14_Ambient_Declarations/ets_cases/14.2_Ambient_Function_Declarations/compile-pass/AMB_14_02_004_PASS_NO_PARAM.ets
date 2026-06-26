/**
 * @id AMB_14_02_004_PASS_NO_PARAM
 * @expect compile-pass
 * @section 14.2
 * @design declare function 无参数，返回 int，无函数体
 * @note 正向用例：验证 ambient function 无参数声明编译通过
 */
declare function empty(): int
