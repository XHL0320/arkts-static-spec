/**
 * @id EXP2_17_04_01_021_RUNTIME_ZERO_DIM_EMPTY_ARRAY
 * @expect runtime
 * @section 17.4.1
 * @design 零维度数组创建：验证 new int[0] (0) 创建空数组，长度为 0
 * @note 运行时用例：零维度是合法的维度值，应创建空数组而非抛出异常
 */
function main(): void {
  let arr: int[] = new int[0] (0)
  // Verify array length is 0
  if (arr.length != 0) {
    throw new Error("assertion failed: array length should be 0, got " + arr.length)
  }
  console.log("verified")
}
