/**
 * @id EXP_07_07_011_PASS_STRING_SPREAD
 * @expect compile-pass
 * @section 7.7
 * @design 字符串类型扩展：string 是 iterable 类型，可在字面量中扩展
 * @note 正向用例：验证字符串类型作为 iterable 可扩展
 */
let s: string = "abc"
let result: string[] = [...s]
