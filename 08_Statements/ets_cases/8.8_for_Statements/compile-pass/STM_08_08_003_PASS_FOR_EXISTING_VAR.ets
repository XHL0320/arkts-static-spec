/**
 * @id STM_08_08_003_PASS_FOR_EXISTING_VAR
 * @expect compile-pass
 * @section 8.8
 * @design 使用已存在的变量作为循环索引，而非在 forInit 中声明新变量
 * @note 正向用例：int idx = 0; for (; idx < 10; idx++) { ... }
 */
function testForExistingVar(): void {
    let idx: int = 0
    let sum: int = 0
    for (; idx < 5; idx++) {
        sum = sum + idx
    }
}
