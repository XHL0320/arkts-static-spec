/**
 * @id EXP_07_11_03_005_PASS_EXPR_INSTANCE_COMPATIBLE_ARGS
 * @expect compile-pass
 * @section 7.11.3
 * @design expression.identifier 实例方法调用参数兼容性检查：参数类型匹配时通过
 * @note 正向用例：验证 expression 实例方法调用时，参数类型兼容性检查通过
 */
class Wrapper {
    prefix: string

    constructor(p: string) {
        this.prefix = p
    }

    wrap(msg: string, times: int): string {
        let result: string = ""
        for (let i: int = 0; i < times; i++) {
            result = result + this.prefix + msg
        }
        return result
    }
}

function main(): void {
    let f: Wrapper = new Wrapper("-")
    let r: string = f.wrap("x", 3)
}
