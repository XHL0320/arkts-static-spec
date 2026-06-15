/**
 * @id LEX_02_05_015_PASS_LITERAL_INTEGER
 * @expect compile-pass
 * @section 2.5
 * @design Literals Token: 整数字面量（十进制、十六进制、八进制、二进制）
 * @note 正向用例：整数字面量作为 Token
 */
function testLiteralInteger(): void {
  let dec: int = 42
  let hex: int = 0xFF
  let oct: int = 0o77
  let bin: int = 0b101
  let underscore: int = 1_000_000
}
