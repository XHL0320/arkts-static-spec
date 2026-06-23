/**
 * @id EXP_07_07_016_FAIL_SPREAD_NON_REST_TUPLE
 * @expect compile-fail
 * @section 7.7
 * @design 扩展元组到非 rest 参数：bar 为非 rest 普通参数，扩展元组应报错
 * @note 反向用例：验证元组扩展到非 rest 参数应报编译时错误
 */
function bar(n1: int, n2: string): void {}
let tup: [int, string] = [1, "a"]
bar(...tup)
