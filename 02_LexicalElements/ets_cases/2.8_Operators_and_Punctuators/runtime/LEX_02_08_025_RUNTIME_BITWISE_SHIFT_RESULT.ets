/**
 * @id LEX_02_08_025_RUNTIME_BITWISE_SHIFT_RESULT
 * @expect runtime
 * @section 2.8
 * @design 位运算符 & | ^ ~ 与移位运算符 << >> >>> 运行时结果
 * @note 运行时用例：实际执行验证语义正确性
 */
function main(): void {
  let a: int = 5
  let b: int = 3
  if ((a & b) !== 1) { throw new Error("& failed") }
  if ((a | b) !== 7) { throw new Error("| failed") }
  if ((a ^ b) !== 6) { throw new Error("^ failed") }
  if (((1 as int) << 4) !== 16) { throw new Error("<< failed") }
  if (((16 as int) >> 2) !== 4) { throw new Error(">> failed") }
  if (((16 as int) >>> 2) !== 4) { throw new Error(">>> failed") }
}
