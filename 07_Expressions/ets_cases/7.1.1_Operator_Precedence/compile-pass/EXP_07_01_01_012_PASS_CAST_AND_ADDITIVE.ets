/**
 * @id EXP_07_01_01_012_PASS_CAST_AND_ADDITIVE
 * @expect compile-pass
 * @section 7.1.1
 * @design 类型转换 `as` 左结合，优先级在加法和移位之间
 * @note 正向用例：验证 `as` 转换与加法优先级
 */
function testCastAndAdditive(): void {
  let x: int = 5
  let a: int = x as int + 1
  let b: int = (x as int) + 1
}
