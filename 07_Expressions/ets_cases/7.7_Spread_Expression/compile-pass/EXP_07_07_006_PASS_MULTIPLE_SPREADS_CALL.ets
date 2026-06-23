/**
 * @id EXP_07_07_006_PASS_MULTIPLE_SPREADS_CALL
 * @expect compile-pass
 * @section 7.7
 * @design 函数调用中多个扩展：foo(...a1, ...a2)
 * @note 正向用例：验证多个扩展序列作为连续参数传递
 */
function foo(...p: int[]): void {}
let a1: int[] = [1, 2]
let a2: int[] = [3, 4, 5]
foo(...a1, ...a2)
