/**
 * @id EXP_07_03_001_PASS_INTEGER_LITERAL
 * @expect compile-pass
 * @section 7.3
 * @design 验证整数字面量在所有进制形式下编译通过：十进制、十六进制、八进制、二进制
 * @note 正向用例：验证整数字面量作为表达式的基本编译通过用法
 */
function main(): void {
  let dec: int = 42
  let hex: int = 0xFF
  let oct: int = 0o77
  let bin: int = 0b1010
  let zero: int = 0
  let maxInt: int = 0x7FFFFFFF
  let largeLong: long = 0x8000_0000
  let neg: int = -10
  console.log("verified")
}
