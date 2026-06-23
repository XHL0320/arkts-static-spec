/**
 * @id EXP_07_07_019_RUNTIME_MULTIPLE_SPREADS
 * @expect runtime
 * @section 7.7
 * @design 多扩展合并验证：[...a1, ...a2] 合并结果正确
 * @note 运行时用例：验证多个扩展在同一字面量中正确合并
 */
function main(): void {
    let a1: int[] = [1, 2]
    let a2: int[] = [3, 4]
    let result: int[] = [...a1, ...a2]
    if (result.length != 4) {
        throw new Error("assertion failed: length != 4")
    }
    if (result[0] != 1 || result[1] != 2 || result[2] != 3 || result[3] != 4) {
        throw new Error("assertion failed: values mismatch")
    }
    console.log("verified")
}
