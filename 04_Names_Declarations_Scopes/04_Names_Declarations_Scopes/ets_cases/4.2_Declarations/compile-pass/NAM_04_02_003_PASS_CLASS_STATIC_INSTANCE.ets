/**
 * @id NAM_04_02_003_PASS_CLASS_STATIC_INSTANCE
 * @expect compile-pass
 * @section 4.2
 * @design 类静态和实例方法同行
 * @note 正向用例：验证类中同名静态和实例方法共存
 */
class A {
    static method(): void {}
    method(): void {}
}
