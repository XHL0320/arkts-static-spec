/**
 * @id EXP_07_17_01_014_RUNTIME_TUPLE_CAST
 * @expect runtime
 * @section 7.17.1
 * @design 验证数组字面量 as [double, string] 元组运行时值正确
 * @note 运行时用例：元组 as 转换后元素值验证
 */
function main(): void {
  let t = [1, "cc"] as [double, string]
  if (t[0] != 1.0) {
    throw new Error("assertion failed: expected 1.0, got " + t[0])
  }
  if (t[1] != "cc") {
    throw new Error("assertion failed: expected cc, got " + t[1])
  }
  console.log("verified")
}
