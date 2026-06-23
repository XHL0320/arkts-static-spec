/**
 * @id EXP_07_08_005_PASS_ARRAY_WITH_PARENS
 * @expect compile-pass
 * @section 7.8
 * @design 数组字面量中括号表达式：[(1 + 2), (3 * 4)]，括号在数组元素中使用
 * @note 正向用例：验证数组元素中使用括号表达式
 */
let arr: int[] = [(1 + 2), (3 * 4)]
