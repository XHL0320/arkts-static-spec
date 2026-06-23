/**
 * @id LEX_02_09_023_RT_BASE_EQUALITY
 * @expect runtime
 * @section 2.9.1
 * @design 各进制值相等验证
 * @note runtime 用例：验证不同进制的相同值相等
 */

function main(): void {
  let dec: int = 42
  let hex: int = 0x2A
  let oct: int = 0o52
  let bin: int = 0b101010

  if (dec !== hex) { throw new Error("dec != hex") }
  if (dec !== oct) { throw new Error("dec != oct") }
  if (dec !== bin) { throw new Error("dec != bin") }
}
