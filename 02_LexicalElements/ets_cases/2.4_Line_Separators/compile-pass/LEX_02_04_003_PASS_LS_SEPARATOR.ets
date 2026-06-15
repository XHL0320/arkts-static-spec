/**
 * @id LEX_02_04_003_PASS_LS_SEPARATOR
 * @expect compile-pass
 * @section 2.4
 * @design Line separator character (U+2028, LS) 作为行分隔符
 * @note 正向用例：Unicode 行分隔符 LS
 */
function testLs(): void {   let a: int = 1   let b: int = 2   let c: int = a + b }
