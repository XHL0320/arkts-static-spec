/**
 * @id EXP_07_07_015_FAIL_SPREAD_NON_REST_ARRAY
 * @expect compile-fail
 * @section 7.7
 * @design 扩展数组到非 rest 参数：foo 参数为非 rest 普通参数，扩展数组应报错
 * @note 反向用例：验证扩展到非 rest 参数应报编译时错误
 */
function foo(n1: int, n2: int): void {}
let arr: int[] = [1, 2]
foo(...arr)
