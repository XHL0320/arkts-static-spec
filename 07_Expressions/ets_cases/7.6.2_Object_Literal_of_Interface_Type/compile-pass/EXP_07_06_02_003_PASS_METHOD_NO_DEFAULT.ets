/**
 * @id EXP_07_06_02_003_PASS_METHOD_NO_DEFAULT
 * @expect compile-pass
 * @section 7.6.2
 * @design 实现无默认实现的接口方法：print_name 无默认实现，对象字面量中必须提供
 * @note 正向用例：验证无默认实现的方法必须在对象字面量中提供实现
 */
interface I {
    print_name(name: string): void
}
let i: I = {
    print_name(name: string): void {}
}
