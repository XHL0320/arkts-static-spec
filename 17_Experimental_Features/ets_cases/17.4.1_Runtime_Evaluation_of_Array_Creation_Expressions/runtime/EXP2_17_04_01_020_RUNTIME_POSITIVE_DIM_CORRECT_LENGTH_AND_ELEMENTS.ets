/**
 * @id EXP2_17_04_01_020_RUNTIME_POSITIVE_DIM_CORRECT_LENGTH_AND_ELEMENTS
 * @expect runtime
 * @section 17.4.1
 * @design 正维度数组创建：验证 new int[5] (42) 创建的数组长度为 5，且所有元素值为 42
 * @note 运行时用例：实际执行验证数组长度和元素初始化正确性
 */
function main(): void {
  let arr: int[] = new int[5] (42)
  // Verify array length
  if (arr.length != 5) {
    throw new Error("assertion failed: array length should be 5, got " + arr.length)
  }
  // Verify all elements are initialized to 42
  if (arr[0] != 42) {
    throw new Error("assertion failed: arr[0] should be 42, got " + arr[0])
  }
  if (arr[1] != 42) {
    throw new Error("assertion failed: arr[1] should be 42, got " + arr[1])
  }
  if (arr[2] != 42) {
    throw new Error("assertion failed: arr[2] should be 42, got " + arr[2])
  }
  if (arr[3] != 42) {
    throw new Error("assertion failed: arr[3] should be 42, got " + arr[3])
  }
  if (arr[4] != 42) {
    throw new Error("assertion failed: arr[4] should be 42, got " + arr[4])
  }
  console.log("verified")
}
