/**
 * @id EXP2_17_02_01_023_RUNTIME_LENGTH_AFTER_CREATION
 * @expect runtime
 * @section 17.2.1
 * @design 运行时验证 FixedArray 创建后 length 属性正确
 * @note 运行时用例：验证通过构造函数和字面量创建的数组长度正确
 */
function main(): void {
  let a: FixedArray<string> = new FixedArray<string>(7, "test")
  if (a.length != 7) {
    throw new Error("assertion failed: constructor array length expected 7, got " + a.length)
  }

  let b: FixedArray<number> = [10, 20, 30]
  if (b.length != 3) {
    throw new Error("assertion failed: literal array length expected 3, got " + b.length)
  }

  let c: FixedArray<int> = new FixedArray<int>(0, 0)
  if (c.length != 0) {
    throw new Error("assertion failed: empty array length expected 0, got " + c.length)
  }

  let d: FixedArray<int> = new FixedArray<int>(1, 42)
  if (d.length != 1) {
    throw new Error("assertion failed: single-element array length expected 1, got " + d.length)
  }
  console.log("verified")
}
