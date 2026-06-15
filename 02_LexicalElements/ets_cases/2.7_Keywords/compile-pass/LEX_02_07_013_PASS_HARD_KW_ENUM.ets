/**
 * @id LEX_02_07_013_PASS_HARD_KW_ENUM
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: enum 用于枚举声明
 * @note 正向用例：enum 关键字
 */
enum Color013 {
  RED,
  GREEN,
  BLUE
}

function test013(): void {
  let c: Color013 = Color013.RED
}
