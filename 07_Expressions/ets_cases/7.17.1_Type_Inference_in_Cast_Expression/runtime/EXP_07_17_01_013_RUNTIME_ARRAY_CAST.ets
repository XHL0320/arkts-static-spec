/**
 * @id EXP_07_17_01_013_RUNTIME_ARRAY_CAST
 * @expect runtime
 * @section 7.17.1
 * @design 验证数组字面量 as double[] 运行时元素值正确
 * @note 运行时用例：int 数组 as double[] 后元素值验证
 */
function main(): void {
  let arr = [1, 2] as double[]
  if (arr[0] != 1.0) {
    throw new Error("assertion failed: expected 1.0, got " + arr[0])
  }
  if (arr[1] != 2.0) {
    throw new Error("assertion failed: expected 2.0, got " + arr[1])
  }
  console.log("verified")
}
