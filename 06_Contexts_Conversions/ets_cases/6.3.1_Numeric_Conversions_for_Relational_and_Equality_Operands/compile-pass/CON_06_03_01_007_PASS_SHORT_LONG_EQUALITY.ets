/**
 * @id CON_06_03_01_007_PASS_SHORT_LONG_EQUALITY
 * @expect compile-pass
 * @section 6.3.1
 * @design 相等运算符: short == long / short != long, short widening 为 long
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShortLongEquality(): void {
  let a: short = 50
  let b: long = 50
  let r1: boolean = a == b
  let r2: boolean = a != b
}
