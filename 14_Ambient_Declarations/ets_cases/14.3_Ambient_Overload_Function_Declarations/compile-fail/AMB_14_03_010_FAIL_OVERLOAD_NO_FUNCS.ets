/**
 * @id AMB_14_03_010_FAIL_OVERLOAD_NO_FUNCS
 * @expect compile-fail
 * @section 14.3
 * @design declare overload 引用未声明的标识符，没有预置的 declare function
 * @note 反向用例：overload 引用未声明的标识符应产生编译时错误
 */
declare overload baz {nonexistent}
