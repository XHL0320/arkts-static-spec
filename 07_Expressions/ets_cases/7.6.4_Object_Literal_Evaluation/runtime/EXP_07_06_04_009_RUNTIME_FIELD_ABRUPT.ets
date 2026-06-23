/**
 * @id EXP_07_06_04_009_RUNTIME_FIELD_ABRUPT
 * @expect runtime
 * @section 7.6.4
 * @design 字段表达式异常完成验证：第二个字段表达式抛出 Error，对象字面量求值终止，
 *         验证第一个字段已正确赋值，第二个字段未赋值
 * @runtime-throws=Error
 * @note 运行时用例：验证字段表达式异常导致字面量求值终止，前面字段已赋值
 */
class Data {
    first: string = ""
    second: string = ""
}

function throwExpr(): string {
    throw new Error("field expression failed")
}

function main(): void {
    let d: Data = {first: "ok", second: throwExpr()}
    throw new Error("unreachable: field expression should have thrown")
}
