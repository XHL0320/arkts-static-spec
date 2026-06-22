/**
 * @id CON_06_03_01_004_PASS_INT_LONG_EQUALITY
 * @expect compile-pass
 * @section 6.3.1
 * @design 相等运算符: int == long / int != long, int widening 为 long
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testIntLongEquality(): void {
  let a: int = 100
  let b: long = 100
  let r1: boolean = a == b
  let r2: boolean = a != b
}
