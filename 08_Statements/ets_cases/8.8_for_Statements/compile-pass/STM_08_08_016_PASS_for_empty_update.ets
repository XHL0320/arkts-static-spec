/**
 * @id STM_08_08_016_PASS_for_empty_update
 * @expect compile-pass
 * @section 8.8
 * @design forUpdate 为空，循环变量在循环体内手动更新 — STATEMENTS.md: forUpdate? 是可选的
 * @note 正向用例：for (let i = 0; i < 5; ) { i++ } 空的 forUpdate，循环体内手动递增
 */
function testForEmptyUpdate(): void {
    let sum: int = 0
    for (let i: int = 0; i < 5; ) {
        sum = sum + i
        i++
    }
    console.log(sum)
}
