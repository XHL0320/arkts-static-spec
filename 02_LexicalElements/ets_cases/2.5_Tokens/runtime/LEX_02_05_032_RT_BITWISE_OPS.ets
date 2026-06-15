/**
 * @id LEX_02_05_032_RT_BITWISE_OPS
 * @expect runtime
 * @section 2.5
 * @design 位运算符 Token 的运行结果
 * @note 运行时用例：& | ^ << >> >>>
 */
function main(): void {
  let a: int = 12  // 1100
  let b: int = 10  // 1010
  if ((a & b) !== 8) { throw new Error("a & b !== 8") }
  if ((a | b) !== 14) { throw new Error("a | b !== 14") }
  if ((a ^ b) !== 6) { throw new Error("a ^ b !== 6") }
  if ((a << 2) !== 48) { throw new Error("a << 2 !== 48") }
  if ((a >> 1) !== 6) { throw new Error("a >> 1 !== 6") }
}
