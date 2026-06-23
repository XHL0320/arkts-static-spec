/**
 * @id STM_08_08_008_RUNTIME_FOR_BASIC
 * @expect runtime
 * @section 8.8
 * @design 基础 for 循环运行时行为：遍历 i=0..4 求和，验证结果正确
 * @note 运行时用例：for (let i: int = 0; i < 5; i++) 求和
 */
function main(): void {
    let sum: int = 0
    for (let i: int = 0; i < 5; i++) {
        sum = sum + i
    }
    if (sum != 10) {
        throw new Error("basic for sum failed, expected 10 but got " + sum)
    }
    console.log("verified")
}
