/**
 * @id CON_06_03_01_008_PASS_BYTE_DOUBLE_EQUALITY
 * @expect compile-pass
 * @section 6.3.1
 * @design 相等运算符: byte == double / byte != double, byte widening 为 double
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testByteDoubleEquality(): void {
  let a: byte = 10
  let b: double = 10.0
  let r1: boolean = a == b
  let r2: boolean = a != b
}
