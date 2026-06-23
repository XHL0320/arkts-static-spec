/**
 * @id LEX_02_09_02_016_RT_RADIX_EQUALITY
 * @expect runtime
 * @section 2.9.2
 * @design 各进制值相等验证
 * @note runtime 用例：验证不同进制的相同值相等
 */

function main(): void {
  // 验证各进制表示的相同值相等
  let dec: int = 153
  let hex: int = 0x99
  let oct: int = 0o231
  let bin: int = 0b10011001

  if (dec !== hex) { throw new Error("dec != hex") }
  if (dec !== oct) { throw new Error("dec != oct") }
  if (dec !== bin) { throw new Error("dec != bin") }
}
