/**
 * @id EXP2_17_02_01_020_RUNTIME_ELEMENT_COUNT
 * @expect runtime
 * @section 17.2.1
 * @design 运行时验证 FixedArray 构造函数创建正确数量的元素
 * @note 运行时用例：验证 new FixedArray<int>(5, 42) 创建 5 个元素
 */
function main(): void {
  let a: FixedArray<int> = new FixedArray<int>(5, 42)
  if (a.length != 5) {
    throw new Error("assertion failed: expected length 5, got " + a.length)
  }
  let small: FixedArray<string> = new FixedArray<string>(1, "x")
  if (small.length != 1) {
    throw new Error("assertion failed: expected length 1, got " + small.length)
  }
  let large: FixedArray<int> = new FixedArray<int>(100, 0)
  if (large.length != 100) {
    throw new Error("assertion failed: expected length 100, got " + large.length)
  }
  console.log("verified")
}
