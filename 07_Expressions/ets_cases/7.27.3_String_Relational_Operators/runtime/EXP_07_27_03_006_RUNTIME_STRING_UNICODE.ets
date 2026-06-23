/**
 * @id EXP_07_27_03_006_RUNTIME_STRING_UNICODE
 * @expect runtime
 * @section 7.27.3
 * @design Unicode 字符串字典序比较
 * @note 运行时用例：实际执行验证字符串字典序比较
 */
function main(): void {
  let a: string = "hello"
  let b: string = "world"
  let result: boolean = a < b
  if (result != true) { throw new Error("assertion failed: hello < world") }
  console.log("verified")
}
