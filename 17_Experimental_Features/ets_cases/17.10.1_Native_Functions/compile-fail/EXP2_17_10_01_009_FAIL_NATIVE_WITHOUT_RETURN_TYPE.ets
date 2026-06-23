/**
 * @id EXP2_17_10_01_009_FAIL_NATIVE_WITHOUT_RETURN_TYPE
 * @expect compile-fail
 * @section 17.10.1
 * @design 原生函数必须有显式返回类型：验证 native function 无显式返回类型产生编译错误 ESE0018
 * @note 反向用例：验证该场景应产生编译时错误 - Native and Declare methods should have explicit return type
 */
native function noReturnType(a: int)
