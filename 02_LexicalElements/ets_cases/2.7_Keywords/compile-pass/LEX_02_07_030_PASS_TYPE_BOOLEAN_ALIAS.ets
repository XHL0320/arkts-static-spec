/**
 * @id LEX_02_07_030_PASS_TYPE_BOOLEAN_ALIAS
 * @expect compile-pass
 * @section 2.7
 * @design 类型关键字别名: boolean 与 Boolean 同义
 * @note 正向用例：主名 + 别名等价
 */
function test030(): void {
  let a: boolean = true
  let b: Boolean = false
}
