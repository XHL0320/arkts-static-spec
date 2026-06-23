/**
 * @id EXP2_17_13_1_013_RUNTIME_ORDINARY_CALL_VERIFY
 * @expect runtime
 * @section 17.13.1
 * @design 运行时验证：普通函数调用语法 funcName(receiver, args) 正确执行并返回预期结果
 * @note 运行时用例：实际执行验证接收者函数的普通调用语法
 */
class StringWrapper { content: string = "" }
function appendExclamation(this: StringWrapper): string { return this.content + "!" }
function main(): void {
  let sw: StringWrapper = new StringWrapper(); sw.content = "hello"
  let r: string = appendExclamation(sw)
  if (r != "hello!") { throw new Error("assertion failed: expected 'hello!', got '" + r + "'") }
  console.log("verified")
}
