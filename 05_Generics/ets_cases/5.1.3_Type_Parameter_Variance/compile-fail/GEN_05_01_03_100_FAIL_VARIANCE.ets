/**
 * @id GEN_05_01_03_100_FAIL_VARIANCE
 * @expect compile-fail
 * @section 5.1.3
 * @design 函数类型参数不能有变体修饰
 * @note 反向用例：验证函数类型参数的 variance 修饰符编译错误
 */
function bad<in T>(x: T): void {}
