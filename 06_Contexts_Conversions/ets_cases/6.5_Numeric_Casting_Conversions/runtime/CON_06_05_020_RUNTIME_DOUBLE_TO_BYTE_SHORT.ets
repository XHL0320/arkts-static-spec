/**
 * @id CON_06_05_020_RUNTIME_DOUBLE_TO_BYTE_SHORT
 * @expect runtime
 * @section 6.5
 * @design double→byte/short 两步转换
 * @note spec: double→int→byte/short
 */
function main(): void {
  let d: double = 257.7
  let b: byte = d.toInt().toByte()
  if (b != 1) throw new Error('257.7->int->byte should be 1 (257 mod 256)')
  let s: short = d.toInt().toShort()
  if (s != 257) throw new Error('257.7->int->short should be 257')
  console.log('double to byte/short verified')
}