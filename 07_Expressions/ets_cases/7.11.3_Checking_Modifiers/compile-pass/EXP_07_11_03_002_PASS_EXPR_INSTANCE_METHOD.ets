/**
 * @id EXP_07_11_03_002_PASS_EXPR_INSTANCE_METHOD
 * @expect compile-pass
 * @section 7.11.3
 * @design expression.identifier 形式：方法未声明 static，修饰符检查通过
 * @note 正向用例：验证 expression 调用的方法不能是 static，本用例满足条件
 */
class Greeter {
    name: string

    constructor(n: string) {
        this.name = n
    }

    greet(): string {
        return "Hello, " + this.name
    }

    length(): int {
        return this.name.length
    }
}

function main(): void {
    let g: Greeter = new Greeter("World")
    let msg: string = g.greet()
    let len: int = g.length()
}
