/**
 * @id EXP_07_18_036_RUNTIME_TYPEOF_OBJECT_RUNTIME
 * @expect runtime
 * @section 7.18
 * @design 验证 typeof Object 变量运行时值
 * @note 运行时用例：Object 变量值为 string→"string", 值为 int→"int"
 */
function main(): void {
    let o: Object = "hello"
    let t: string = typeof o
    if (t != "string") {
        throw new Error("assertion failed: typeof Object(string) = " + t)
    }

    let p: Object = 42
    let tp: string = typeof p
    if (tp != "int") {
        throw new Error("assertion failed: typeof Object(int) = " + tp)
    }

    console.log("verified")
}
