/**
 * @id EXP_07_06_03_017_RUNTIME_NUMERIC_INDEXING
 * @expect runtime
 * @section 7.6.3
 * @design 验证 Record<number, string> 数值索引访问正确
 * @note 运行时用例：验证通过数值索引访问 Record 中的值
 */
function main(): void {
    let map: Record<number, string> = {
        1: "a",
        2: "b",
    }
    if (map[1] != "a") {
        throw new Error("assertion failed: map[1] != a, got " + map[1])
    }
    if (map[2] != "b") {
        throw new Error("assertion failed: map[2] != b, got " + map[2])
    }
    console.log("verified")
}
