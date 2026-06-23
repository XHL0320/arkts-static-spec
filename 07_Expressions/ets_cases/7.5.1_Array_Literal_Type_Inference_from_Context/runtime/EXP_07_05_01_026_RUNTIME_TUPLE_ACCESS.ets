/**
 * @id EXP_07_05_01_026_RUNTIME_TUPLE_ACCESS
 * @expect runtime
 * @section 7.5.1
 * @design Tuple 字面量运行时值验证
 * @note 运行时用例：验证 tuple 类型上下文字面量元素访问正确
 */
function main(): void {
  let t: [int, string] = [42, "hello"]
  if (t[0] != 42) {
    throw new Error("assertion failed: tuple[0] = " + t[0])
  }
  if (t[1] != "hello") {
    throw new Error("assertion failed: tuple[1] = " + t[1])
  }
  console.log("verified")
}
