/**
 * @id TYP_03_16_01_020_FAIL_LENGTH_FLOAT
 * @expect compile-fail
 * @section 3.16.1
 * @design FLOAT
 * @note spec gap: newly added
 */
function test(): void { let a: number[] = [1,2,3]; a.length = 3.14 }
