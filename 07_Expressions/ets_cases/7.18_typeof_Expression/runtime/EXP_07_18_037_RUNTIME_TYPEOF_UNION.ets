/**
 * @id EXP_07_18_037_RUNTIME_TYPEOF_UNION
 * @expect runtime
 * @section 7.18
 * @design 验证 typeof union 类型运行时值
 * @note 运行时用例：union 变量实际类型为 string→"string", 为 int→"int"
 */
function getValue(b: boolean): string | int {
    if (b) {
        return "hello"
    }
    return 42
}

function main(): void {
    let v: string | int = getValue(true)
    let t: string = typeof v
    if (t != "string") {
        throw new Error("assertion failed: typeof union(string) = " + t)
    }

    let w: string | int = getValue(false)
    let tw: string = typeof w
    if (tw != "int") {
        throw new Error("assertion failed: typeof union(int) = " + tw)
    }

    console.log("verified")
}
