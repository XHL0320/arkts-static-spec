/**
 * @id EXP_07_06_02_024_RUNTIME_METHOD_CALL
 * @expect runtime
 * @section 7.6.2
 * @design 对象字面量方法调用验证：实现的方法可正确调用并返回预期结果
 * @note 运行时用例：验证接口对象字面量中的方法可正常调用
 */
interface I {
    twice(x: number): number
}

function main(): void {
    const i: I = { twice(x: number): number { return x * 2 } }
    if (i.twice(21) != 42) {
        throw new Error("assertion failed: twice(21) != 42, got " + i.twice(21))
    }
    console.log("verified")
}
