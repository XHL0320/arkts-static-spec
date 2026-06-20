/**
 * @id NAM_04_03_004_PASS_BLOCK_SCOPE
 * @expect compile-pass
 * @section 4.3
 * @design 块作用域
 * @note 正向用例：验证块内声明可在块内引用
 */
function testBlock(): void {
    let x: number = 1;
    if (true) {
        let y: number = x + 1;
    }
}
