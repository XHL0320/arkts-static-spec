/**
 * @id CON_06_04_02_006_PASS_UNION_IN_RETURN
 * @expect compile-pass
 * @section 6.4.2
 * @design 联合类型返回: return short→byte|int(仅int更大)
 * @note 正向用例：联合返回类型的 widening
 */
function retShortAsUnion(): byte | int {
  let s: short = 42
  return s
}

function testUnionInReturn(): void {
  let r: byte | int = retShortAsUnion()
}
