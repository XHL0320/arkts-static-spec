/**
 * @id EXP_07_21_08_032_RUNTIME_VARIABLE
 * @expect runtime
 * @section 7.21.8
 * @design 验证 boolean 变量取反运行时正确
 * @note 运行时用例：变量 !x
 */
function main(): void {
    let x: boolean = true
    let r1: boolean = !x
    if (r1 != false) {
        throw new Error("assertion failed: !true != false")
    }

    x = false
    let r2: boolean = !x
    if (r2 != true) {
        throw new Error("assertion failed: !false != true")
    }

    // successive application toggles
    x = true
    x = !x  // false
    x = !x  // true
    if (x != true) {
        throw new Error("assertion failed: toggle x != true")
    }

    console.log("verified")
}
