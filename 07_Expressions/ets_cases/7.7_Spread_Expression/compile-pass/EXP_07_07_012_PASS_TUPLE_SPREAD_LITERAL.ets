/**
 * @id EXP_07_07_012_PASS_TUPLE_SPREAD_LITERAL
 * @expect compile-pass
 * @section 7.7
 * @design 元组扩展在字面量中：[...tuple1, ...tuple2]，组成新字面量
 * @note 正向用例：验证元组类型扩展在数组字面量中
 */
let t1: [int, string] = [1, "a"]
let t2: [boolean] = [true]
let result: Object[] = [...t1, ...t2]
