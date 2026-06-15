/**
 * @id LEX_02_04_007_PASS_CONSECUTIVE_LF
 * @expect compile-pass
 * @section 2.4
 * @design 多个连续 LF 视为单一分隔符
 * @note 正向用例：连续 5 个 LF 不影响编译
 */
function testConsecutiveLf(): void {
  let a: int = 1




  let b: int = 2


  let c: int = a + b
}
