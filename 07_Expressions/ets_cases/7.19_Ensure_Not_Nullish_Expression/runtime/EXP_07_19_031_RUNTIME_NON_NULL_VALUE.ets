/**
 * @id EXP_07_19_031_RUNTIME_NON_NULL_VALUE
 * @expect runtime
 * @section 7.19
 * @design 验证 ensure-not-nullish 表达式在运行时非空值返回原值
 * @note 运行时用例：非空值变量应用 ! 返回原值
 */
function main(): void {
    let x: int | undefined = 42
    let y: int = x!
    if (y != 42) {
        throw new Error("assertion failed: expected 42, got " + y)
    }

    let s: string | undefined = "hello"
    let t: string = s!
    if (t != "hello") {
        throw new Error("assertion failed: expected hello, got " + t)
    }

    console.log("verified")
}
