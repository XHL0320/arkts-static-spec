/**
 * @id CON_06_05_022_RUNTIME_INF_TO_FLOAT
 * @expect runtime
 * @section 6.5
 * @design double.Infinity toFloat() 为 float.Infinity
 * @note spec: Double infinity is converted to float infinity
 */
function main(): void {
  let inf: double = 1.0 / 0.0
  let f: float = inf.toFloat()
  if (f < 1e38f) throw new Error('Inf->float should be Inf')
  console.log('Inf to float verified')
}