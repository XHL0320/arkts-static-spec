/**
 * @id EXP_07_07_008_PASS_NESTED_SPREAD
 * @expect compile-pass
 * @section 7.7
 * @design 嵌套扩展表达式：foo(...[...arr])，先扩展再解构
 * @note 正向用例：验证嵌套扩展语法
 */
let arr: int[] = [1, 2, 3]
function foo(...p: int[]): void {}
foo(...[...arr])
