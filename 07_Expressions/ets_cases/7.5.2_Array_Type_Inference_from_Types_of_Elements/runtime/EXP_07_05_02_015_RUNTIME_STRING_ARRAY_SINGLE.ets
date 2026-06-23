/**
 * @id EXP_07_05_02_015_RUNTIME_STRING_ARRAY_SINGLE
 * @expect runtime
 * @section 7.5.2
 * @design string[] 单一元素运行时值验证
 * @note 运行时用例：验证单一 string 元素数组字面量值正确
 */
function main(): void {
  let b = ["hello"]
  if (b[0] != "hello") {
    throw new Error("assertion failed: string array single element")
  }
  console.log("verified")
}
