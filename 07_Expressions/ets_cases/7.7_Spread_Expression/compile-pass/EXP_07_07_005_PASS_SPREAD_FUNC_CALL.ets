/**
 * @id EXP_07_07_005_PASS_SPREAD_FUNC_CALL
 * @expect compile-pass
 * @section 7.7
 * @design 函数调用中扩展数组：foo(...arr)，参数为 rest 参数
 * @note 正向用例：验证扩展表达式在函数调用中用于 rest 参数
 */
function foo(...p: int[]): void {}
let arr: int[] = [1, 2, 3]
foo(...arr)
