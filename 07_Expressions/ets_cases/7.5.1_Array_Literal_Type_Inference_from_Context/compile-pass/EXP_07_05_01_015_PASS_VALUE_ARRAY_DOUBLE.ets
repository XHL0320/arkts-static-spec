/**
 * @id EXP_07_05_01_015_PASS_VALUE_ARRAY_DOUBLE
 * @expect compile-pass
 * @section 7.5.1
 * @design ValueArray<double> 接受整数元素：值兼容
 * @note 正向用例：验证 int 可赋值给 double 元素的 ValueArray
 */
let b: ValueArray<double> = [1, 2]
