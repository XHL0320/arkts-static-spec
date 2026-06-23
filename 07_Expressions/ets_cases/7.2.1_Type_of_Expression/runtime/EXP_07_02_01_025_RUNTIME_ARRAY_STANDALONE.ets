/**
 * @id EXP_07_02_01_025_RUNTIME_ARRAY_STANDALONE
 * @expect runtime
 * @section 7.2.1
 * @design standalone 数组字面量在运行时类型正确
 * @note 运行时用例：验证 standalone 数组字面量运行时行为
 */
function main(): void {
  let arr = [1, 2, 3, 4, 5]
  if (arr.length != 5) {
    throw new Error("assertion failed: arr.length != 5, got " + arr.length)
  }
  if (arr[0] != 1 || arr[4] != 5) {
    throw new Error("assertion failed: arr elements incorrect")
  }
  console.log("verified")
}
