/**
 * @id CON_06_04_02_008_PASS_UNION_THREE_PLUS
 * @expect compile-pass
 * @section 6.4.2
 * @design 三个或更多成员的联合类型: byte→short|int|long|double
 * @note 正向用例：3+ 成员联合中的 widening
 */
function testUnionThreePlus(): void {
  let b: byte = 1
  let s: short = 2
  let i: int = 3

  let u: byte | short | int | long = b
  let v: short | int | long | double = s
  let w: int | long | double = i
}
