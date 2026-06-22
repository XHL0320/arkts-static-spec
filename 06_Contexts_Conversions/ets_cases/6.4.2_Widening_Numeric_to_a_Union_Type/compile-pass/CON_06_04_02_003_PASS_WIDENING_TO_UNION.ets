/**
 * @id CON_06_04_02_003_PASS_WIDENING_TO_UNION
 * @expect compile-pass
 * @section 6.4.2
 * @design 唯一更大类型: short→byte|int(仅int更大), byte→byte|long(仅long更大)
 * @note 正向用例：联合中恰好一个成员大于值类型时 widening 成功
 */
function testWideningToUnion(): void {
  let s: short = 2
  let u1: byte | int = s

  let b: byte = 1
  let u2: byte | long = b
}
