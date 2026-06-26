/**
 * @id AMB_14_02_001_PASS_BASIC_VOID
 * @expect compile-pass
 * @section 14.2
 * @design declare function 基本声明，有返回类型 void，无函数体，无默认值参数
 * @note 正向用例：验证 ambient function 声明返回 void 编译通过
 */
declare function foo(x: int): void
