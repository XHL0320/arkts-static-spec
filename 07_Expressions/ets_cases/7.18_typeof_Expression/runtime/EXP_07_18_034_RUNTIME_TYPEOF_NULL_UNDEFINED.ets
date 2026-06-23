/**
 * @id EXP_07_18_034_RUNTIME_TYPEOF_NULL_UNDEFINED
 * @expect runtime
 * @section 7.18
 * @design 验证 typeof null/undefined 运行时值
 * @note 运行时用例：null→"object", undefined→"undefined"
 */
function main(): void {
    let tn: string = typeof null
    if (tn != "object") {
        throw new Error("assertion failed: typeof null = " + tn)
    }

    let tu: string = typeof undefined
    if (tu != "undefined") {
        throw new Error("assertion failed: typeof undefined = " + tu)
    }

    console.log("verified")
}
