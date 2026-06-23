/**
 * @id EXP_07_11_03_011_RUNTIME_EXPR_INSTANCE
 * @expect runtime
 * @section 7.11.3
 * @design expression.identifier 调用实例方法运行时验证：修饰符检查通过后，实例方法正确执行
 * @note 运行时用例：验证 expression 形式实例方法调用的运行时行为
 */
class Counter {
    count: int

    constructor() {
        this.count = 0
    }

    increment(): int {
        this.count = this.count + 1
        return this.count
    }

    getValue(): int {
        return this.count
    }
}

function main(): void {
    let c: Counter = new Counter()

    let v1: int = c.increment()
    if (v1 != 1) {
        throw new Error("assertion failed: expected 1, got " + v1.toString())
    }

    let v2: int = c.increment()
    if (v2 != 2) {
        throw new Error("assertion failed: expected 2, got " + v2.toString())
    }

    let val: int = c.getValue()
    if (val != 2) {
        throw new Error("assertion failed: expected 2, got " + val.toString())
    }

    console.log("verified")
}
