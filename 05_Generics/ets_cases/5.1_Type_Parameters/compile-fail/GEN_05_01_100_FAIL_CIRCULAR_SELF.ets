/**
 * @id GEN_05_01_100_FAIL_CIRCULAR_SELF
 * @expect compile-fail
 * @section 5.1
 * @design 类型参数自依赖
 * @note 反向用例：验证类型参数自依赖编译错误
 */
class C<T extends T> {}
