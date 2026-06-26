/**
 * @id AMB_14_07_01_006_FAIL_FUNCTION_SIG_MISMATCH
 * @expect compile-fail
 * @section 14.7.1
 * @design ambient 函数与实现函数签名不匹配（参数类型不同），违反 spec
 * @note 反向用例：签名不匹配应产生编译时错误
 */
declare namespace A {
  function foo(x: int): void
}
namespace A {
  function foo(x: string): void {}
}
