/**
 * @id LEX_02_07_029_PASS_TYPE_STRING_ALIAS
 * @expect compile-pass
 * @section 2.7
 * @design 类型关键字别名: string 与 String 同义
 * @note 正向用例：主名 + 别名等价
 */
function test029(): void {
  let a: string = "hello"
  let b: String = "world"
}
