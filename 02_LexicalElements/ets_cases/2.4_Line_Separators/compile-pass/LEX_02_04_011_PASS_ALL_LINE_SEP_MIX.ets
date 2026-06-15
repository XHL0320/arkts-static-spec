/**
 * @id LEX_02_04_011_PASS_ALL_LINE_SEP_MIX
 * @expect compile-pass
 * @section 2.4
 * @design 同一文件混用 4 种行终止符 LF/CR/LS/PS
 * @note 正向用例：全部 4 种行终止符混用
 */
function testAllLineSepMix(): void {
  let a: int = 1  let b: int = 2   let c: int = 3   let d: int = a + b + c
}
