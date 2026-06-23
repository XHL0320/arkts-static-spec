/**
 * @id STM_08_08_018_PASS_for_labeled_break
 * @expect compile-pass
 * @section 8.8
 * @design for 循环使用 labeled break 提前退出循环体 — STATEMENTS.md §8.8, §8.10：break labelName 在带有标签的 for 循环中合法
 * @note 正向用例：loop1: for (let i = 0; i < 10; i++) { if (i == 3) break loop1; } labeled break 跳出单层 for
 */
function testForLabeledBreak(): void {
    let sum: int = 0
    loop1: for (let i: int = 0; i < 10; i++) {
        sum = sum + i
        if (i == 3) {
            break loop1
        }
    }
    console.log(sum)
}
