/**
 * @id EXP2_17_16_1_005_PASS_SINGLE_ELEMENT
 * @expect compile-pass
 * @section 17.16.1
 * @design 单元数组解构——let [a] = arr 从单元素数组提取值
 * @note 正向用例：验证单元素数组解构编译通过
 */
function testSingleElement(): void {
  let arr: int[] = [99]
  let [val] = arr
  console.log("val=" + val)
}
