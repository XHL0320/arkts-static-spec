/**
 * @id EXP_07_06_04_005_PASS_CTOR_EXECUTION
 * @expect compile-pass
 * @section 7.6.4
 * @design 构造器执行+字段覆盖编译通过：构造器设置默认值后，字段表达式覆盖该值，验证两阶段求值编译正常
 * @note 正向用例：验证构造器先执行再字段赋值可正常编译
 */
class Data {
    value: number = 0
}
let d: Data = {value: 42}
