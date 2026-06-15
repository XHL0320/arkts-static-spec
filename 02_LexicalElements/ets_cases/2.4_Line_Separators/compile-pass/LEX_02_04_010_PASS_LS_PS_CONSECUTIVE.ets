/**
 * @id LEX_02_04_010_PASS_LS_PS_CONSECUTIVE
 * @expect compile-pass
 * @section 2.4
 * @design LS (U+2028) 与 PS (U+2029) 混合连续视为单一分隔符
 * @note 正向用例：Unicode 行/段分隔符连续混合
 */
function testLsPsConsecutive(): void {     let a: int = 1    let b: int = 2 }
