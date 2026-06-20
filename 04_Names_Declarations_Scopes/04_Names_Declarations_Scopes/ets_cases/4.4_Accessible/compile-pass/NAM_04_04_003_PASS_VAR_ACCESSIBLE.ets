/**
 * @id NAM_04_04_003_PASS_VAR_ACCESSIBLE
 * @expect compile-pass
 * @section 4.4
 * @design 变量名可访问用于读写
 * @note 正向用例：验证可访问的变量名用于读写
 */
let counter: number = 0;
function increment(): void {
    counter = counter + 1;
}
