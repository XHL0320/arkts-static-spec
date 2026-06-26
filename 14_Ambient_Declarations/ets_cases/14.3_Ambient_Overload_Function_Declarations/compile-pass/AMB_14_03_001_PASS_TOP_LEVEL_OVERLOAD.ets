/**
 * @id AMB_14_03_001_PASS_TOP_LEVEL_OVERLOAD
 * @expect compile-pass
 * @section 14.3
 * @design declare overload 顶层函数重载，两个不同参数类型的函数组成重载集
 * @note 正向用例：验证顶层 ambient overload 声明编译通过
 */
declare function foo1(p: string): void
declare function foo2(p: number): void
declare overload foo {foo1, foo2}
