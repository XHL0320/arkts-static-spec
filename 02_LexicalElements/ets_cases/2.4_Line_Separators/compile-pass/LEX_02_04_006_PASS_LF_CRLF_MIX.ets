/**
 * @id LEX_02_04_006_PASS_LF_CRLF_MIX
 * @expect compile-pass
 * @section 2.4
 * @design 单文件内混合使用 LF 和 CRLF
 * @note 正向用例：LF + CRLF 混合编译通过
 */
function testLfCrlfMix(): void {
  let a: int = 1
  let b: int = 2
  let c: int = a + b
}
