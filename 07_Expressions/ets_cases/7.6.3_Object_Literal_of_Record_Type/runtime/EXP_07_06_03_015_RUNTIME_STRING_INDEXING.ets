/**
 * @id EXP_07_06_03_015_RUNTIME_STRING_INDEXING
 * @expect runtime
 * @section 7.6.3
 * @design 验证 Record<string, number> 索引取值正确
 * @note 运行时用例：验证通过字符串索引访问 Record 中的值
 */
function main(): void {
    let map: Record<string, number> = {
        "John": 25,
        "Mary": 21,
    }
    if (map["John"] != 25) {
        throw new Error("assertion failed: John != 25, got " + map["John"])
    }
    if (map["Mary"] != 21) {
        throw new Error("assertion failed: Mary != 21, got " + map["Mary"])
    }
    console.log("verified")
}
