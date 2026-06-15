/**
 * @id LEX_02_04_004_PASS_PS_SEPARATOR
 * @expect compile-pass
 * @section 2.4
 * @design Paragraph separator character (U+2029, PS) 作为行分隔符
 * @note 正向用例：Unicode 段落分隔符 PS
 */
function testPs(): void {   let a: int = 1   let b: int = 2   let c: int = a + b }
