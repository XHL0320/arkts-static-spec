/**
 * @id CON_06_04_02_005_PASS_UNION_IN_CALL
 * @expect compile-pass
 * @section 6.4.2
 * @design 联合类型形参调用: int→byte|int, short→byte|int(仅int更大)
 * @note 正向用例：联合形参的 widening 调用
 */
function takeUnion(val: byte | int): void {}

function testUnionInCall(): void {
  let i: int = 20
  takeUnion(i)

  let s: short = 5
  takeUnion(s)
}
