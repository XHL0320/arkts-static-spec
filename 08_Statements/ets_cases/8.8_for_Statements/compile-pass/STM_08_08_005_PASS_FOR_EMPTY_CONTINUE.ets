/**
 * @id STM_08_08_005_PASS_FOR_EMPTY_CONTINUE
 * @expect compile-pass
 * @section 8.8
 * @design forContinue 表达式为空（无终止条件），循环靠内部 break 退出
 * @note 正向用例：for (let i = 0; ; i++) { if (i >= 5) break; }
 */
function testForEmptyContinue(): void {
    let sum: int = 0
    for (let i = 0; ; i++) {
        if (i >= 5) {
            break
        }
        sum = sum + i
    }
}
