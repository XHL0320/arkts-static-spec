/**
 * @id EXP2_17_02_01_021_RUNTIME_ELEMENTS_INITIALIZED
 * @expect runtime
 * @section 17.2.1
 * @design 运行时验证 FixedArray 构造函数将所有元素初始化为给定值
 * @note 运行时用例：验证 new FixedArray<string>(3, "hello") 中 a[0], a[1], a[2] 均为 "hello"
 */
function main(): void {
  let a: FixedArray<string> = new FixedArray<string>(3, "hello")
  if (a[0] != "hello") {
    throw new Error("assertion failed: a[0] expected 'hello', got '" + a[0] + "'")
  }
  if (a[1] != "hello") {
    throw new Error("assertion failed: a[1] expected 'hello', got '" + a[1] + "'")
  }
  if (a[2] != "hello") {
    throw new Error("assertion failed: a[2] expected 'hello', got '" + a[2] + "'")
  }

  let b: FixedArray<int> = new FixedArray<int>(4, 99)
  if (b[0] != 99) {
    throw new Error("assertion failed: b[0] expected 99")
  }
  if (b[1] != 99) {
    throw new Error("assertion failed: b[1] expected 99")
  }
  if (b[2] != 99) {
    throw new Error("assertion failed: b[2] expected 99")
  }
  if (b[3] != 99) {
    throw new Error("assertion failed: b[3] expected 99")
  }
  console.log("verified")
}
