/**
 * @id LEX_02_04_008_PASS_CONSECUTIVE_CR
 * @expect compile-pass
 * @section 2.4
 * @design 多个连续 CR 视为单一分隔符
 * @note 正向用例：连续多个 CR
 */
function testConsecutiveCr(): void {  let a: int = 1  let b: int = 2  let c: int = a + b
}
