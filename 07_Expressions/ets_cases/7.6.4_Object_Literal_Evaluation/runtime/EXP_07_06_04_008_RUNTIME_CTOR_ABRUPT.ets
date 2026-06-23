/**
 * @id EXP_07_06_04_008_RUNTIME_CTOR_ABRUPT
 * @expect runtime
 * @section 7.6.4
 * @design 构造器异常完成验证：构造器抛出 Error，对象字面量求值应提前终止，
 *         不会执行字段表达式
 * @runtime-throws=Error
 * @note 运行时用例：验证构造器异常导致字面量求值终止
 */
let ctorReached: string = ""

class CrashingClass {
    value: string = ""
    constructor() {
        ctorReached = "ctor_started"
        throw new Error("constructor failed")
    }
}

function fieldExpr(): string {
    ctorReached = ctorReached + "_field"
    return "should_not_reach"
}

function main(): void {
    let x: CrashingClass = {value: fieldExpr()}
    throw new Error("unreachable: constructor should have thrown")
}
