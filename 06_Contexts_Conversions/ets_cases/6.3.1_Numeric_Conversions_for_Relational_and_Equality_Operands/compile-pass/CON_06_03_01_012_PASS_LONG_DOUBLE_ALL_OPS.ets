/**
 * @id CON_06_03_01_012_PASS_LONG_DOUBLE_ALL_OPS
 * @expect compile-pass
 * @section 6.3.1
 * @design 所有关系/相等运算符: long 与 double 的 < > <= >= == !=
 * @note 正向用例：验证全部六种运算符在 widening 上下文中编译通过
 */
function testLongDoubleAllOps(): void {
  let a: long = 100
  let b: double = 99.5
  let r1: boolean = a < b
  let r2: boolean = a > b
  let r3: boolean = a <= b
  let r4: boolean = a >= b
  let r5: boolean = a == b
  let r6: boolean = a != b
}
