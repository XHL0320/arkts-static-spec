/**
 * @id EXP_07_07_020_RUNTIME_SPREAD_MIXED
 * @expect runtime
 * @section 7.7
 * @design 扩展与字面量元素混合运行时验证：[...a1, 42, ...a2] 结果正确
 * @note 运行时用例：验证扩展表达式与常规字面量元素混合结果
 */
function main(): void {
    let a1: int[] = [1, 2]
    let result: int[] = [...a1, 99, ...a1]
    if (result.length != 5) {
        throw new Error("assertion failed: length != 5")
    }
    if (result[0] != 1 || result[1] != 2 || result[2] != 99 || result[3] != 1 || result[4] != 2) {
        throw new Error("assertion failed: values mismatch")
    }
    console.log("verified")
}
