/**
 * @id LEX_02_07_038_PASS_SOFT_KW_OF
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字: of 在 for-of 语句中
 * @note 正向用例：for-of 循环
 */
function test038(): void {
  let arr: int[] = [1, 2, 3]
  let sum: int = 0
  for (let v of arr) {
    sum = sum + v
  }
}
