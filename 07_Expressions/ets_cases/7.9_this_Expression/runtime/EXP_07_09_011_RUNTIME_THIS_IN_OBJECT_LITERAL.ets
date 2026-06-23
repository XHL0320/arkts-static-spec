/**
 * @id EXP_07_09_011_RUNTIME_THIS_IN_OBJECT_LITERAL
 * @expect runtime
 * @section 7.9
 * @design 对象字面量方法中 this 运行时验证：通过对象字面量调用方法，this 指向上下文对象
 * @note 运行时用例：验证对象字面量方法中 this 正确引用对象字面量实例
 */
interface HasValue {
    value: int
    getValue(): int
}

function main(): void {
    let obj: HasValue = {
        value: 42,
        getValue(): int {
            return this.value
        }
    }
    let v: int = obj.getValue()
    if (v != 42) {
        throw new Error("assertion failed: v != 42, got " + v)
    }
    console.log("verified")
}
