/**
 * @id EXP_07_06_02_017_FAIL_MISSING_METHOD
 * @expect compile-fail
 * @section 7.6.2
 * @design 缺少必需方法：接口 I 有 print_name 无默认实现，对象字面量中未提供，应为编译时错误
 * @note 反向用例：验证无默认实现的接口方法必须在对象字面量中提供实现
 */
interface I {
    print_name(name: string): void
}
let i: I = {}
