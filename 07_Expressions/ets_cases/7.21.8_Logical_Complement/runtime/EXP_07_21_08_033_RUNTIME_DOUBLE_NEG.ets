/**
 * @id EXP_07_21_08_033_RUNTIME_DOUBLE_NEG
 * @expect runtime
 * @section 7.21.8
 * @design 验证 !!x == x 双重取反恒等式
 * @note 运行时用例：!!x == x
 */
function main(): void {
    if (!!true != true) {
        throw new Error("assertion failed: !!true != true")
    }

    if (!!false != false) {
        throw new Error("assertion failed: !!false != false")
    }

    let x: boolean = true
    if (!!x != x) {
        throw new Error("assertion failed: !!x != x")
    }

    x = false
    if (!!x != x) {
        throw new Error("assertion failed: !!false != false")
    }

    console.log("verified")
}
