/**
 * @id EXP_07_32_01_002_PASS_SIMPLE_ARRAY
 * @expect compile-pass
 * @section 7.32.1
 * @design 数组元素赋值
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testSimpleArray(): void {
  let arr: int[] = [1, 2, 3]; arr[0] = 99
  console.log(arr[0].toString())
}
