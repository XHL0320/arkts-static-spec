/**
 * @id AMB_14_03_004_PASS_DIFFERENT_PARAM_COUNT
 * @expect compile-pass
 * @section 14.3
 * @design declare overload 不同参数个数的函数重载
 * @note 正向用例：验证不同参数个数的 ambent overload 编译通过
 */
declare function fa(x: int): void
declare function fb(x: int, y: string): void
declare overload f {fa, fb}
