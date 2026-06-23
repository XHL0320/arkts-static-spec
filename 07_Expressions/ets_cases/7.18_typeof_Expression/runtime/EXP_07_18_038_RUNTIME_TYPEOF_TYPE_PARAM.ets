/**
 * @id EXP_07_18_038_RUNTIME_TYPEOF_TYPE_PARAM
 * @expect runtime
 * @section 7.18
 * @design 验证 typeof 类型参数运行时值
 * @note 运行时用例：类型参数 T 实际为 int→"int", 为 string→"string"
 */
class MyBox<T extends Object | null | undefined> {
    val: T
    constructor(v: T) {
        this.val = v
    }
    getType(): string {
        return typeof this.val
    }
}

function main(): void {
    let b = new MyBox<int>(42)
    let ti: string = b.getType()
    if (ti != "int") {
        throw new Error("assertion failed: typeof T(int) = " + ti)
    }

    let c = new MyBox<string>("hello")
    let ts: string = c.getType()
    if (ts != "string") {
        throw new Error("assertion failed: typeof T(string) = " + ts)
    }

    console.log("verified")
}
