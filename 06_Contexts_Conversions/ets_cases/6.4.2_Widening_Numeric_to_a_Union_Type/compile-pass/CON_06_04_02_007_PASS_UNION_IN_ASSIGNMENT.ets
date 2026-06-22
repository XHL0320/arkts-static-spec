/**
 * @id CON_06_04_02_007_PASS_UNION_IN_ASSIGNMENT
 * @expect compile-pass
 * @section 6.4.2
 * @design 联合类型赋值: byte→byte|int(仅int更大)
 * @note 正向用例：赋值时 widening 到联合
 */
function testUnionInAssignment(): void {
  let u: byte | int = 256
  let b: byte = 5
  u = b
}
