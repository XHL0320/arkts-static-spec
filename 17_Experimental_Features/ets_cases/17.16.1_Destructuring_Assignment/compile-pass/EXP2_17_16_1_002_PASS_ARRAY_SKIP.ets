/**
 * @id EXP2_17_16_1_002_PASS_ARRAY_SKIP
 * @expect compile-pass
 * @section 17.16.1
 * @design 数组解构跳过元素——let [a, , b] = arr 跳过中间元素
 * @note 正向用例：验证跳过元素的解构声明编译通过
 */
function testArraySkip(): void {
  let arr: int[] = [10, 20, 30]
  let [first, , third] = arr
  console.log("first=" + first + " third=" + third)
}
