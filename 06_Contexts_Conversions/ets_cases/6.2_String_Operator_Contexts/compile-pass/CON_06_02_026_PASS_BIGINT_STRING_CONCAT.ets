/**
 * @id CON_06_02_026_PASS_BIGINT_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design bigint + string 拼接
 * @note spec: console.log('BigInt is ' + 123n)
 */
function testBigintStringConcat(): void {
  let s: string = 'BigInt is ' + 123n
}