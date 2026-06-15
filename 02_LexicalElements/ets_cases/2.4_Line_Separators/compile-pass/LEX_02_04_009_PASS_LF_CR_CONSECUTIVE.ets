/**
 * @id LEX_02_04_009_PASS_LF_CR_CONSECUTIVE
 * @expect compile-pass
 * @section 2.4
 * @design LF 与 CR 混合连续视为单一分隔符
 * @note 正向用例：连续 LF/CR 混合
 */
function testLfCrConsecutive(): void {

  let a: int = 1

  let b: int = 2
}
