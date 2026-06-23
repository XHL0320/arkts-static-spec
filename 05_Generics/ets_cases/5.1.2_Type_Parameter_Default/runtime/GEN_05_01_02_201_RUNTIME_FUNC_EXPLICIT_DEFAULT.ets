/**
 * @id GEN_05_01_02_201_RUNTIME_FUNC_EXPLICIT_DEFAULT
 * @expect runtime
 * @section 5.1.2
 * @design 函数默认类型参数隐式实例化
 * @note 运行时用例：验证 foo(1) 正确返回 1，验证默认类型参数 number 生效（spec 5.1.2 行239-243）
 */
function foo<T = number>(input: T): T { return input }
function main(): void {
    let r = foo(1)
    if (r != 1) {
        throw new Error("assertion failed: r = " + r)
    }
    console.log("verified")
}
