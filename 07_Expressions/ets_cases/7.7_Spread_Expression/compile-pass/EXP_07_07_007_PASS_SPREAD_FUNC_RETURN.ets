/**
 * @id EXP_07_07_007_PASS_SPREAD_FUNC_RETURN
 * @expect compile-pass
 * @section 7.7
 * @design 函数返回值扩展：foo(...g1())，g1 返回数组
 * @note 正向用例：验证函数调用返回值的扩展
 */
function g1(): int[] {
    return [1, 2]
}
function foo(...p: int[]): void {}
foo(...g1())
