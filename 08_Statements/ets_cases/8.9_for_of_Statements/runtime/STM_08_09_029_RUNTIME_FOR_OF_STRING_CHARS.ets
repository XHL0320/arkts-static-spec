/**
 * @id STM_08_09_029_RUNTIME_FOR_OF_STRING_CHARS
 * @expect runtime
 * @section 8.9
 * @design 字符串 for-of 逐字符迭代

 * @note 运行时用例：实际执行验证字符串迭代
 */
function main(): void {
  let s: string = "ABC"
  let result: string = ""
  for (let ch of s) { result = result + ch }
  if (result != "ABC") { throw new Error("assertion: string iteration") }
  console.log("verified")
}
