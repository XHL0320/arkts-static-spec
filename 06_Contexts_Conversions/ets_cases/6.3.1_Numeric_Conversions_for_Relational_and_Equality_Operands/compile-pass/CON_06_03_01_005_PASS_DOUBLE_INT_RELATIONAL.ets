/**
 * @id CON_06_03_01_005_PASS_DOUBLE_INT_RELATIONAL
 * @expect compile-pass
 * @section 6.3.1
 * @design 关系运算符: double > int / double < int, int widening 为 double
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testDoubleIntRelational(): void {
  let a: double = 3.14
  let b: int = 3
  let r1: boolean = a > b
  let r2: boolean = a < b
  let r3: boolean = b > a
  let r4: boolean = b < a
}
