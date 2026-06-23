/**
 * @id EXP2_17_16_1_021_RUNTIME_SKIP_ELEMENT
 * @expect runtime
 * @section 17.16.1
 * @design 运行时验证解构跳过元素功能——中间元素被忽略
 * @note 运行时用例：实际执行验证 [a, , b] 跳过第二个元素，a 取第一个，b 取第三个
 */
function main(): void {
  let arr: int[] = [100, 200, 300]
  let [first, , third] = arr
  if (first != 100) {
    throw new Error("FAIL: first should be 100, got: " + first)
  }
  if (third != 300) {
    throw new Error("FAIL: third should be 300, got: " + third)
  }
  console.log("PASS: skip element works: first=" + first + " third=" + third)
}
