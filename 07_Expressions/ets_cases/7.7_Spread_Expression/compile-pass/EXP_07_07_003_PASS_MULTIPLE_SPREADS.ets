/**
 * @id EXP_07_07_003_PASS_MULTIPLE_SPREADS
 * @expect compile-pass
 * @section 7.7
 * @design 多扩展表达式：两个数组在同一字面量中扩展 [...a1, ...a2]
 * @note 正向用例：验证多个扩展表达式在同一字面量中
 */
let a1: int[] = [1, 2, 3]
let a2: int[] = [4, 5]
let result: int[] = [...a1, ...a2]
