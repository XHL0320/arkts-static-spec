/**
 * @id EXP_07_06_02_005_PASS_DEFAULT_METHOD_OVERRIDE
 * @expect compile-pass
 * @section 7.6.2
 * @design 覆盖有默认实现的接口方法：method 有默认实现，对象字面量中提供新的实现
 * @note 正向用例：验证有默认实现的方法可以被对象字面量覆盖
 */
interface I {
    method(): void {}
}
let i: I = {
    method(): void {}
}
