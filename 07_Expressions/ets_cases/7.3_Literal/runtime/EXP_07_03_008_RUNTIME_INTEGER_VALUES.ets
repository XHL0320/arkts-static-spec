/**
 * @id EXP_07_03_008_RUNTIME_INTEGER_VALUES
 * @expect runtime
 * @section 7.3
 * @design 运行时验证整数字面量在不同进制下的值是否正确
 * @note 运行时用例：验证十进制、十六进制、八进制、二进制整数字面量的实际值
 */
function main(): void {
  if (42 != 42) throw new Error("dec value fail")
  if (0xFF != 255) throw new Error("hex value fail")
  if (0o77 != 63) throw new Error("oct value fail")
  if (0b1010 != 10) throw new Error("bin value fail")
  if (0 != 0) throw new Error("zero value fail")
  if (-10 != -10) throw new Error("neg value fail")
  console.log("verified")
}
