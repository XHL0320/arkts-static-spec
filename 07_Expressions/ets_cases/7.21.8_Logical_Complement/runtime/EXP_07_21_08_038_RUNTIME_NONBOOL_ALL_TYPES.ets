/**
 * @id EXP_07_21_08_038_RUNTIME_NONBOOL_ALL_TYPES
 * @expect runtime
 * @section 7.21.8
 * @design 验证多种非 boolean 类型的 truthy/falsy 综合对比
 * @note 运行时用例：不同类型 truthy/falsy 一致性校验
 */
function testFalsy(): void {
    // Falsy values in ArkTS Extended Conditional
    if (!null != true) { throw new Error("null") }
    if (!undefined != true) { throw new Error("undefined") }
    if (!0 != true) { throw new Error("0") }
    if (!"" != true) { throw new Error("empty string") }
    if (!false != true) { throw new Error("false") }
}

function testTruthy(): void {
    if (!42 != false) { throw new Error("42") }
    if (!"hello" != false) { throw new Error("hello") }
    let o: Object = new Object()
    if (!o != false) { throw new Error("Object") }
    if (!(-1) != false) { throw new Error("-1") }
    if (!3.14 != false) { throw new Error("3.14") }
    if (!true != false) { throw new Error("true") }
}

function main(): void {
    testFalsy()
    testTruthy()
    console.log("verified")
}
