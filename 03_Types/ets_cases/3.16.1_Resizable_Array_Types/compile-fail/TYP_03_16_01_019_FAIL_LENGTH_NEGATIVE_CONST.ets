/**
 * @id TYP_03_16_01_019_FAIL_LENGTH_NEGATIVE_CONST
 * @expect compile-fail
 * @section 3.16.1
 * @design CONST
 * @note spec gap: newly added
 */
function test(): void { let a: number[] = [1,2,3]; a.length = -1 }
