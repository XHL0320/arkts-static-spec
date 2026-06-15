/**
 * @id LEX_02_05_033_RT_LITERAL_VALUES
 * @expect runtime
 * @section 2.5
 * @design 字面量 Token 的运行时值
 * @note 运行时用例：十六进制/八进制/二进制字面量值
 */
function main(): void {
  let hex: int = 0xFF
  let oct: int = 0o77
  let bin: int = 0b1010
  if (hex !== 255) { throw new Error("hex !== 255") }
  if (oct !== 63) { throw new Error("oct !== 63") }
  if (bin !== 10) { throw new Error("bin !== 10") }
}
