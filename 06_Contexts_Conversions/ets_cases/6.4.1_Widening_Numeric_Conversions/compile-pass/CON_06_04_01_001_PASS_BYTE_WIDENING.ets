/**
 * @id CON_06_04_01_001_PASS_BYTE_WIDENING
 * @expect compile-pass
 * @section 6.4.1
 * @design byte→short/int/long/float/double 全部 widening
 * @note 正向用例：验证 byte 的 5 种 widening 转换
 */
function testByteWidening(): void {
  let b: byte = 1
  let s: short = b
  let i: int = b
  let l: long = b
  let f: float = b
  let d: double = b
}
