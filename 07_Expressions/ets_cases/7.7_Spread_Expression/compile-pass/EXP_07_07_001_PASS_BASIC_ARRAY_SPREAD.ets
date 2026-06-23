/**
 * @id EXP_07_07_001_PASS_BASIC_ARRAY_SPREAD
 * @expect compile-pass
 * @section 7.7
 * @design 基本可调整数组扩展：int[] 类型数组在字面量中扩展
 * @note 正向用例：验证可调整数组扩展的基本语法
 */
let arr: int[] = [1, 2, 3]
let result: int[] = [...arr]
