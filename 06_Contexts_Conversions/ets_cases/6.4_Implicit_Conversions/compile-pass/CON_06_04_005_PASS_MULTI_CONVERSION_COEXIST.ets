/**
 * @id CON_06_04_005_PASS_MULTI_CONVERSION_COEXIST
 * @expect compile-pass
 * @section 6.4
 * @design 多种隐式转换在同一函数中共存: widening + enum→numeric + enum→string
 * @note 正向用例：验证多种转换类型可共存
 */
enum Val {
  X = 10,
  Y = 20
}

enum Tag {
  Open = "open",
  Close = "close"
}

function testMultiConversionCoexist(): void {
  let a: int = Val.X
  let b: long = a
  let c: string = "tag: " + Tag.Open
  let d: int = Val.Y + 5
}
