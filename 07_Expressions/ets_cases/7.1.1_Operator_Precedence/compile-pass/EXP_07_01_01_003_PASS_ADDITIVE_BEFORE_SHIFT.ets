/**
 * @id EXP_07_01_01_003_PASS_ADDITIVE_BEFORE_SHIFT
 * @expect compile-pass
 * @section 7.1.1
 * @design 加法 `+` `-` 优先级高于移位 `<<` `>>` `>>>`
 * @note 正向用例：验证加法优先于移位
 */
function testAdditiveBeforeShift(): void {
  let a: int = 1 + 2 << 3
  let b: int = 16 >> 2 + 1
  let c: int = 8 >>> 1 + 1
  let d: int = 1 << 2 + 3 >> 1
}
