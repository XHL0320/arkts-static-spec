/**
 * @id LEX_02_04_001_PASS_LF_SEPARATOR
 * @expect compile-pass
 * @section 2.4
 * @design Newline character (U+000A, LF) 作为行分隔符
 * @note 正向用例：LF 作为标准行分隔符使用
 */
function testLf(): void {
  let a: int = 1
  let b: int = 2
  let c: int = a + b
}
