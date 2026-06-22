/**
 * @id CON_06_03_01_003_PASS_SHORT_LONG_RELATIONAL
 * @expect compile-pass
 * @section 6.3.1
 * @design 关系运算符: short < long / short > long, short widening 为 long
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShortLongRelational(): void {
  let a: short = 100
  let b: long = 50
  let r1: boolean = a < b
  let r2: boolean = a > b
  let r3: boolean = a <= b
  let r4: boolean = a >= b
}
