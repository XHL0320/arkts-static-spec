/**
 * @id CON_06_03_01_009_PASS_INT_DOUBLE_LE_GE
 * @expect compile-pass
 * @section 6.3.1
 * @design 关系运算符: int <= double / int >= double, int widening 为 double
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testIntDoubleLeGe(): void {
  let a: int = 5
  let b: double = 3.5
  let r1: boolean = a <= b
  let r2: boolean = a >= b
  let r3: boolean = b <= a
  let r4: boolean = b >= a
}
