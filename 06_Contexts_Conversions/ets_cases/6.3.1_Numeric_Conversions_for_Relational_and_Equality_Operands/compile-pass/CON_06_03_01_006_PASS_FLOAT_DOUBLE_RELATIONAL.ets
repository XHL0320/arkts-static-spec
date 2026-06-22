/**
 * @id CON_06_03_01_006_PASS_LONG_DOUBLE_RELATIONAL
 * @expect compile-pass
 * @section 6.3.1
 * @design 关系运算符: long < double, long widening 为 double
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testLongDoubleRelational(): void {
  let a: long = 1
  let b: double = 2.5
  let r1: boolean = a < b
  let r2: boolean = a > b
  let r3: boolean = a <= b
  let r4: boolean = a >= b
}
