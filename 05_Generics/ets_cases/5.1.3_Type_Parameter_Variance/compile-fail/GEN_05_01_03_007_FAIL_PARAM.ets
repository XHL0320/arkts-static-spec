/**
 * @id GEN_05_01_03_007_FAIL_PARAM
 * @expect compile-fail
 * @section 5.2
 * @design out 作为方法参数中函数类型的返回值
 * @note 反向用例：验证函数类型参数方法中变体错误
 */
class Z2<out T> {
    foo(p: () => T): void {}
}
