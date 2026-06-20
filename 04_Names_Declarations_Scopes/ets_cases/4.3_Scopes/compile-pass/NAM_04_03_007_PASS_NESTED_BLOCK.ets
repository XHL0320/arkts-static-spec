/**
 * @id NAM_04_03_007_PASS_NESTED_BLOCK
 * @expect compile-pass
 * @section 4.3
 * @design 嵌套块作用域
 * @note 正向用例：验证多层嵌套块作用域
 */
function nestedBlocks(): void {
    let a: number = 1;
    if (a > 0) {
        let b: number = 2;
        while (b > 0) {
            let c: number = a + b;
            b = b - 1;
        }
    }
}
