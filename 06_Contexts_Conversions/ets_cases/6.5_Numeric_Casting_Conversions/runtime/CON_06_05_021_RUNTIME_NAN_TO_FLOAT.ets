/**
 * @id CON_06_05_021_RUNTIME_NAN_TO_FLOAT
 * @expect runtime
 * @section 6.5
 * @design double.NaN toFloat() 为 float.NaN
 * @note spec: Double NaN is converted to float NaN
 */
function main(): void {
  let nan: double = 0.0 / 0.0
  let f: float = nan.toFloat()
  if (!isNaN(f)) throw new Error('NaN->float should be NaN')
  console.log('NaN to float verified')
}