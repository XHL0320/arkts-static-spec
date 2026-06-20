/**
 * @id NAM_04_07_001_PASS_FUNC_DECLARATION
 * @expect compile-pass
 * @section 4.7
 * @design 顶层函数声明
 * @note 正向用例：验证顶层函数声明通过编译
 */
function add(a: number, b: number): number {
    return a + b;
}
