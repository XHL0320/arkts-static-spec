/**
 * @id EXP_07_07_002_PASS_FIXED_ARRAY_SPREAD
 * @expect compile-pass
 * @section 7.7
 * @design 固定长度数组扩展：FixedArray<int> 在字面量中扩展
 * @note 正向用例：验证 FixedArray 扩展语法
 */
let arr: FixedArray<int> = [4, 5]
let result: int[] = [...arr]
