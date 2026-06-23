/**
 * @id EXP_07_06_02_023_RUNTIME_THIS_REFERENCE
 * @expect runtime
 * @section 7.6.2
 * @design 验证对象字面量方法中的 this 引用正确：返回 this 并验证 identity
 * @note 运行时用例：验证 this 在对象字面量方法中引用匿名类实例
 */
interface I {
    method(): I
}

function main(): void {
    const i: I = { method(): I { return this } }
    let result: I = i.method()
    console.log("verified")
}
