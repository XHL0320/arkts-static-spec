/**
 * @id LEX_02_09_03_022_PASS_HEX_FLOAT
 * @expect compile-pass
 * @section 2.9.3
 * @design 十六进制浮点字面量（hex float）
 * @note 正向用例：spec/lexical.md 列出 hex float 语法 0x1.Fp10
 */
function testHexFloat(): void {
  let a: double = 0x1.Fp10
  let b: double = 0x1.0p0
  let c: double = 0xABCD.EFp-10
}
