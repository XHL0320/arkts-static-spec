/**
 * @id EXP_07_03_010_RUNTIME_BIGINT_STRING_VALUES
 * @expect runtime
 * @section 7.3
 * @design 运行时验证 bigint 和字符串字面量的值正确性
 * @note 运行时用例：验证 bigint 字面量和字符串字面量的实际值
 */
function main(): void {
  let bi: bigint = 153n
  if (bi != 153n) throw new Error("bigint value fail: " + bi)
  let s1: string = "Hello"
  if (s1 != "Hello") throw new Error("string value fail")
  let s2: string = 'World'
  if (s2 != "World") throw new Error("single quote string fail")
  let empty: string = ""
  if (empty != "") throw new Error("empty string fail")
  console.log("verified")
}
