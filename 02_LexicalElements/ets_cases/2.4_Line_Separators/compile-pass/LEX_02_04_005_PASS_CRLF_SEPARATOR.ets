/**
 * @id LEX_02_04_005_PASS_CRLF_SEPARATOR
 * @expect compile-pass
 * @section 2.4
 * @design CRLF (Windows 风格) 作为行分隔符序列
 * @note 正向用例：CRLF 应当被视为单一行分隔（"any sequence is single separator"）
 */
function testCrlf(): void {
  let a: int = 1
  let b: int = 2
  let c: int = a + b
}
