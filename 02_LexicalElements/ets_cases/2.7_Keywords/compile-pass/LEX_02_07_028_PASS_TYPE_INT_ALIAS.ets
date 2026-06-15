/**
 * @id LEX_02_07_028_PASS_TYPE_INT_ALIAS
 * @expect compile-pass
 * @section 2.7
 * @design 类型关键字别名: int 与 Int 同义
 * @note 正向用例：主名 + 别名等价
 */
function test028(): void {
  let a: int = 1
  let b: Int = 2
  let r: int = a + b
}
