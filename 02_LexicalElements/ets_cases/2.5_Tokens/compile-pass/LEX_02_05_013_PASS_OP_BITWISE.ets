/**
 * @id LEX_02_05_013_PASS_OP_BITWISE
 * @expect compile-pass
 * @section 2.5
 * @design Operators Token: 位运算符 & | ^ ~ << >> >>>
 * @note 正向用例：位运算符作为 Token
 */
function testOpBitwise(): void {
  let a: int = 5
  let b: int = 3
  let r1: int = a & b
  let r2: int = a | b
  let r3: int = a ^ b
  let r4: int = ~a
  let r5: int = a << 1
  let r6: int = a >> 1
  let r7: int = a >>> 1
}
