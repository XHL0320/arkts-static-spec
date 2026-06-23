/**
 * @id EXP2_17_10_02_012_FAIL_NATIVE_METHOD_NO_RETURN_TYPE
 * @expect compile-fail
 * @section 17.10.2
 * @design 原生方法必须有显式返回类型：验证 native method 无显式返回类型产生编译错误 ESE0018
 * @note 反向用例：验证该场景应产生编译时错误 - Native and Declare methods should have explicit return type
 */
class NoReturnType {
  native foo(a: int)
}
