/**
 * @id EXP_07_11_02_003_PASS_CLASS_EXPR_METHOD
 * @expect compile-pass
 * @section 7.11.2
 * @design 类表达式形式：通过类实例表达式调用实例方法，候选集合包含类的实例方法
 * @note 正向用例：验证 expression with class type 能找到类 T 中名为 identifier 的实例方法
 */
class MyClass {
    value: int

    constructor(v: int) {
        this.value = v
    }

    getDouble(): int {
        return this.value * 2
    }

    isPositive(): boolean {
        return this.value > 0
    }
}

function main(): void {
    let obj: MyClass = new MyClass(21)
    let d: int = obj.getDouble()
    let pos: boolean = obj.isPositive()
}
