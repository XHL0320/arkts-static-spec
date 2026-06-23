/**
 * @id EXP_07_07_022_RUNTIME_READONLY_SOURCE
 * @expect runtime
 * @section 7.7
 * @design 只读源数组扩展运行时验证：readonly int[] 扩展后可读写目标数组
 * @note 运行时用例：验证只读源数组扩展后目标数组可变且源数组不变
 */
function main(): void {
    let a: readonly int[] = [1, 2, 3]
    let rw: int[] = [...a]
    rw[1] = 99
    if (rw[1] != 99) {
        throw new Error("assertion failed: rw[1] != 99")
    }
    if (a[1] != 2) {
        throw new Error("assertion failed: original modified")
    }
    console.log("verified")
}
