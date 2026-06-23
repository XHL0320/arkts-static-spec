/**
 * @id EXP_07_28_3_RUNTIME_STRING_CONTENT
 * @expect runtime
 * @section 7.28
 * @design 字符串内容相等运行时
 * @note 运行时用例：实际执行验证字符串内容相等运行时
 */

function main(): void {
  let a: string = "abc"; let b: string = "abc"
  if (a != b) { throw new Error("assertion: same string content") }
  console.log("verified")
}
