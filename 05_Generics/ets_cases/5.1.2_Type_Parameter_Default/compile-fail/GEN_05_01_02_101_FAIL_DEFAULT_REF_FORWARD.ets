/**
 * @id GEN_05_01_02_101_FAIL_DEFAULT_REF_FORWARD
 * @expect compile-fail
 * @section 5.1.2
 * @design 默认值引用后文类型参数
 * @note 反向用例：验证默认值引用后文定义的类型参数
 */
function foo<T1 = T2, T2 = T1>() {}
