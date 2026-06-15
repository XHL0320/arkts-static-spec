/**
 * @id LEX_02_07_033_PASS_SOFT_KW_TYPE_ALIAS
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字: type 用于类型别名声明
 * @note 正向用例：type 在 type alias 上下文中
 */
type IntPair033 = [int, int]

function test033(): void {
  let p: IntPair033 = [1, 2]
}
