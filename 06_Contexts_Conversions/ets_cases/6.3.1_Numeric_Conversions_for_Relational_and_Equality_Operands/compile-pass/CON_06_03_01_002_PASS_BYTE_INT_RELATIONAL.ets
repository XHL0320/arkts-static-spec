/**
 * @id CON_06_03_01_002_PASS_BYTE_INT_RELATIONAL
 * @expect compile-pass
 * @section 6.3.1
 * @design 关系运算符: byte < int / byte > int, byte widening 为 int
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testByteIntRelational(): void {
  let a: byte = 10
  let b: int = 20
  let r1: boolean = a < b
  let r2: boolean = a > b
  let r3: boolean = b <= a
  let r4: boolean = b >= a
}
