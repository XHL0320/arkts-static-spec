/**
 * @id EXP_07_32_03_003_PASS_LHS_ARRAY
 * @expect compile-pass
 * @section 7.32.3
 * @design 左值：数组元素
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLhsArray(): void {
  let arr: int[] = [1, 2]; arr[1] = 99
  console.log(arr[1].toString())
}
