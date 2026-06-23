/**
 * @id EXP_07_18_031_RUNTIME_TYPEOF_STRING_BOOLEAN
 * @expect runtime
 * @section 7.18
 * @design 验证 typeof string/boolean 运行时值
 * @note 运行时用例：typeof s→"string", typeof b→"boolean"
 */
function main(): void {
    let s: string = "hello"
    let ts: string = typeof s
    if (ts != "string") {
        throw new Error("assertion failed: typeof string = " + ts)
    }

    let b: boolean = true
    let tb: string = typeof b
    if (tb != "boolean") {
        throw new Error("assertion failed: typeof boolean = " + tb)
    }

    console.log("verified")
}
