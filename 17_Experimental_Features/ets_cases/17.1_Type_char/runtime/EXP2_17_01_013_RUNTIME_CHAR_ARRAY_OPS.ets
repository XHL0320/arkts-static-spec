/**
 * @id EXP2_17_01_013_RUNTIME_CHAR_ARRAY_OPS
 * @expect runtime
 * @section 17.1
 * @design char 数组操作：验证 char[] 的创建、索引访问和迭代
 * @note 运行时用例：实际执行验证 char 数组的运行时行为
 */
function main(): void {
  let arr: char[] = [c'h', c'e', c'l', c'l', c'o']
  // Verify array length
  if (arr.length != 5) {
    throw new Error("assertion failed: array length should be 5, got " + arr.length)
  }
  // Verify first element
  if (!(arr[0] == 0x68)) {
    throw new Error("assertion failed: arr[0] should be 'h' (0x68)")
  }
  // Verify last element
  if (!(arr[4] == 0x6F)) {
    throw new Error("assertion failed: arr[4] should be 'o' (0x6F)")
  }
  // Verify ordering: 'h' < 'o'
  if (!(arr[0] < arr[4])) {
    throw new Error("assertion failed: 'h' should be less than 'o'")
  }
  console.log("verified")
}
