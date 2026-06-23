/**
 * @id NAM_04_05_01_001_PASS_TYPE_ALIAS_ARRAY
 * @expect compile-pass
 * @section 4.5.1
 * @design 数组类型别名
 * @note 正向用例：验证数组匿名类型别名
 */
type Matrix = number[][];
let m: Matrix = [[1, 2], [3, 4]];
