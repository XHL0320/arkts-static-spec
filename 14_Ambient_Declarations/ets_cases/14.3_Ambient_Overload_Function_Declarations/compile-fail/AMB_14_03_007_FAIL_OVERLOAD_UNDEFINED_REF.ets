/**
 * @id AMB_14_03_007_FAIL_OVERLOAD_UNDEFINED_REF
 * @expect compile-fail
 * @section 14.3
 * @design declare overload 引用未定义的函数名，违反 spec
 * @note 反向用例：overload 引用不存在的函数应产生编译时错误
 */
declare function foo1(p: string): void
declare overload foo {foo1, nonexistentFunc}
