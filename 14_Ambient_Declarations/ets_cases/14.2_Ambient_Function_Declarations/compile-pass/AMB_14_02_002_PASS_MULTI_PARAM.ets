/**
 * @id AMB_14_02_002_PASS_MULTI_PARAM
 * @expect compile-pass
 * @section 14.2
 * @design declare function 多参数声明，返回 boolean，无函数体
 * @note 正向用例：验证 ambient function 多参数声明编译通过
 */
declare function bar(x: int, y: string): boolean
