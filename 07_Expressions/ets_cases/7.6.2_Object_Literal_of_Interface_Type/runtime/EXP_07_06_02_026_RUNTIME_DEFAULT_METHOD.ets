/**
 * @id EXP_07_06_02_026_RUNTIME_DEFAULT_METHOD
 * @expect runtime
 * @section 7.6.2
 * @design 验证接口默认方法可以工作：有默认实现的方法在对象字面量中跳过时使用接口实现
 * @note 运行时用例：验证接口的默认方法实现可被对象字面量继承使用
 */
interface I {
    print_something(): void {}
}

function main(): void {
    const i: I = {}
    i.print_something()
    console.log("verified")
}
