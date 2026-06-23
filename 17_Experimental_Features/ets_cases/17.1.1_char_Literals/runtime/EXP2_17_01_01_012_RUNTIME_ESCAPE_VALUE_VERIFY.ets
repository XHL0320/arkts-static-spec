/**
 * @id EXP2_17_01_01_012_RUNTIME_ESCAPE_VALUE_VERIFY
 * @expect runtime
 * @section 17.1.1
 * @design 转义序列字面量值验证：验证 c'\n' 等于 0x0A，c'\t' 等于 0x09
 * @note 运行时用例：实际执行验证转义序列 char 字面量的实际值
 */
function main(): void {
  // c'\n' should be 0x0A (10)
  let newline: char = c'\n'
  if (!(newline == 0x0A)) {
    throw new Error("assertion failed: c'\\n' should equal 0x0A")
  }
  if (!(newline == 10)) {
    throw new Error("assertion failed: c'\\n' should equal 10")
  }
  // c'\t' should be 0x09 (9)
  let tab: char = c'\t'
  if (!(tab == 0x09)) {
    throw new Error("assertion failed: c'\\t' should equal 0x09")
  }
  // c'\r' should be 0x0D (13)
  let cr: char = c'\r'
  if (!(cr == 0x0D)) {
    throw new Error("assertion failed: c'\\r' should equal 0x0D")
  }
  // c'\\' should be 0x5C (92)
  let backslash: char = c'\\'
  if (!(backslash == 92)) {
    throw new Error("assertion failed: c'\\\\' should equal 92")
  }
  console.log("verified")
}
