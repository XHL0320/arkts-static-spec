/**
 * @id AMB_14_02_007_PASS_UNION_PARAM
 * @expect compile-pass
 * @section 14.2
 * @design declare function 联合类型参数 int | string，返回 void
 * @note 正向用例：验证 ambient function 联合类型参数编译通过
 */
declare function fn(x: int | string): void
