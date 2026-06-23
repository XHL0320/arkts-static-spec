/**
 * @id GEN_05_01_03_002_FAIL_POSITION
 * @expect compile-fail
 * @section 5.2
 * @design out 在 in-position（方法参数）
 * @note 反向用例：验证 out 类型参数作为方法参数编译错误
 */
class X<out T> {
    foo(p: T): void {}
}
