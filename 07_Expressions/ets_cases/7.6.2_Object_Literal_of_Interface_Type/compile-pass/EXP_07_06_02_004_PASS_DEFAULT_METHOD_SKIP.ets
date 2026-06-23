/**
 * @id EXP_07_06_02_004_PASS_DEFAULT_METHOD_SKIP
 * @expect compile-pass
 * @section 7.6.2
 * @design 跳过有默认实现的接口方法：print_something 有默认实现，对象字面量中可跳过
 * @note 正向用例：验证有默认实现的方法可以在对象字面量中跳过
 */
interface I {
    print_name(name: string): void
    print_something(): void {}
}
let i: I = {
    print_name(name: string): void {}
}
