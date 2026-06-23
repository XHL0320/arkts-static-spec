/**
 * @id EXP_07_07_010_PASS_TUPLE_SPREAD_CALL
 * @expect compile-pass
 * @section 7.7
 * @design 元组扩展在函数调用中：bar(...tuple)，参数为 rest 元组
 * @note 正向用例：验证元组类型在函数调用中的扩展
 */
function bar(...t: [int, string]): void {}
let tup: [int, string] = [1, "a"]
bar(...tup)
