/**
 * @id CON_06_05_017_RUNTIME_NAN_TO_INT
 * @expect runtime
 * @section 6.5
 * @design NaN.toInt() 应为 0
 * @note spec: if operand is NaN, result is 0
 */
function main(): void {
  let nan: double = 0.0 / 0.0
  if (nan.toInt() != 0) throw new Error('NaN.toInt() should be 0')
  console.log('NaN to int verified')
}