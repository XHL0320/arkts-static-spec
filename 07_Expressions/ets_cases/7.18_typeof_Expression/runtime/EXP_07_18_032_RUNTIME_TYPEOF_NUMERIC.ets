/**
 * @id EXP_07_18_032_RUNTIME_TYPEOF_NUMERIC
 * @expect runtime
 * @section 7.18
 * @design 验证 typeof 各数值类型运行时值
 * @note 运行时用例：int→"int", byte→"byte", double→"number", bigint→"bigint"
 */
function main(): void {
    let x: int = 42
    let ti: string = typeof x
    if (ti != "int") {
        throw new Error("assertion failed: typeof int = " + ti)
    }

    let y: byte = 1
    let tb: string = typeof y
    if (tb != "byte") {
        throw new Error("assertion failed: typeof byte = " + tb)
    }

    let z: double = 3.14
    let td: string = typeof z
    if (td != "number") {
        throw new Error("assertion failed: typeof double = " + td)
    }

    let b: bigint = 100n
    let tbg: string = typeof b
    if (tbg != "bigint") {
        throw new Error("assertion failed: typeof bigint = " + tbg)
    }

    console.log("verified")
}
