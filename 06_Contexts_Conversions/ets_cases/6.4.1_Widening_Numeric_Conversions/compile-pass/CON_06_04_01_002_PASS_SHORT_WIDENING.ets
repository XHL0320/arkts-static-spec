/**
 * @id CON_06_04_01_002_PASS_SHORT_WIDENING
 * @expect compile-pass
 * @section 6.4.1
 * @design short→int/long/float/double 全部 widening
 * @note 正向用例：验证 short 的 4 种 widening 转换
 */
function testShortWidening(): void {
  let s: short = 2
  let i: int = s
  let l: long = s
  let f: float = s
  let d: double = s
}
