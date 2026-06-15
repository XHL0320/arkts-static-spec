/**
 * @id LEX_02_04_016_PASS_LINE_SEP_IN_ARRAY
 * @expect compile-pass
 * @section 2.4
 * @design 数组字面量 [] 内允许换行
 * @note 正向用例：数组元素分多行书写
 */
function testLineSepInArray(): void {
  let arr: int[] = [
    1,
    2,
    3
  ]
}
