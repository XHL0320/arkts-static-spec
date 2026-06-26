/**
 * @id AMB_14_03_005_PASS_MIXED_OPTIONAL
 * @expect compile-pass
 * @section 14.3
 * @design declare overload 含可选参数的重载组合
 * @note 正向用例：验证含可选参数的 ambient overload 编译通过
 */
declare function f1(x: int): void
declare function f2(x?: string): void
declare overload f {f1, f2}
