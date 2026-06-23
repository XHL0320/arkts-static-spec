/**
 * @id STM_08_10_021_PASS_BREAK_IN_FOR_OF
 * @expect compile-pass
 * @section 8.10
 * @design for-of 循环中使用 break
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBreakInForOf(): void {
  let arr: int[] = [1, 2, 3, 4, 5]
  let count: int = 0
  for (let x of arr) { count++; if (x == 3) break }
  console.log(count.toString())
}
