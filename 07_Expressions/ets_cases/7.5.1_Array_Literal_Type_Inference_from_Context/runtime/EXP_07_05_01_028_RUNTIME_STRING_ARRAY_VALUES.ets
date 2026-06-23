/**
 * @id EXP_07_05_01_028_RUNTIME_STRING_ARRAY_VALUES
 * @expect runtime
 * @section 7.5.1
 * @design string[] 字面量运行时值验证
 * @note 运行时用例：验证 string[] 类型上下文字面量元素值正确
 */
function main(): void {
  let s: string[] = ["hello", "world"]
  if (s[0] != "hello" || s[1] != "world") {
    throw new Error("assertion failed: string array values")
  }
  console.log("verified")
}
