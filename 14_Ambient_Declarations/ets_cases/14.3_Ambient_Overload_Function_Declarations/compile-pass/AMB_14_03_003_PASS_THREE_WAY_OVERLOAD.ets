/**
 * @id AMB_14_03_003_PASS_THREE_WAY_OVERLOAD
 * @expect compile-pass
 * @section 14.3
 * @design declare overload 三重重载：string, number, boolean 三个参数类型
 * @note 正向用例：验证三个以上函数组成的 ambient overload 编译通过
 */
declare function fn1(p: string): void
declare function fn2(p: number): void
declare function fn3(p: boolean): void
declare overload fn {fn1, fn2, fn3}
