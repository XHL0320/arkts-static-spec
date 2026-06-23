/**
 * @id STM_08_08_020_RUNTIME_for_countdown
 * @expect runtime
 * @section 8.8
 * @design 运行时验证 for 循环递减计数（forUpdate 使用 i-- 自减表达式）的正确执行行为
 * @note 运行时用例：for (let i = 5; i > 0; i--) 递减求和 5+4+3+2+1，验证 sum == 15
 */
function main(): void {
    let sum: int = 0
    for (let i: int = 5; i > 0; i--) {
        sum = sum + i
    }
    if (sum != 15) {
        throw new Error("countdown for sum failed, expected 15 but got " + sum)
    }
    console.log("verified")
}
