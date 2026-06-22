/**
 * @id STM_08_11_020_PASS_CONTINUE_FOR_OF
 * @expect compile-pass
 * @section 8.11
 * @design for-of 循环中使用 continue
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testContinueForOf(): void {
  let arr: int[] = [1, 2, 3, 4, 5]
  let sum: int = 0
  for (let x of arr) { if (x % 2 == 0) continue; sum = sum + x }
  console.log(sum.toString())
}
