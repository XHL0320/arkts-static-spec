/**
 * @id EXP_07_27_01_007_RUNTIME_NUMERIC_INFINITY
 * @expect runtime
 * @section 7.27.1
 * @design 验证IEEE 754浮点无穷大的关系比较运行时行为：负无穷 < 所有有限值 < 正无穷
 * @note 运行时用例：实际执行验证Infinity和-Infinity的关系比较结果
 */
function main(): void {
  let posInf: double = 1.0 / 0.0   // positive infinity
  let negInf: double = -1.0 / 0.0  // negative infinity
  let finite: double = 1.0e308     // large but finite

  // Negative infinity < all finite values
  if (!(negInf < finite)) throw new Error("-Inf < finite should be true")
  if (!(negInf < posInf)) throw new Error("-Inf < +Inf should be true")
  if (!(negInf < 0.0)) throw new Error("-Inf < 0 should be true")

  // Positive infinity > all finite values
  if (!(posInf > finite)) throw new Error("+Inf > finite should be true")
  if (!(posInf > negInf)) throw new Error("+Inf > -Inf should be true")
  if (!(posInf > 0.0)) throw new Error("+Inf > 0 should be true")

  // Negative infinity relationships
  if (negInf > finite) throw new Error("-Inf > finite should be false")
  if (negInf >= posInf) throw new Error("-Inf >= +Inf should be false")

  // Positive infinity relationships
  if (posInf < finite) throw new Error("+Inf < finite should be false")
  if (posInf <= negInf) throw new Error("+Inf <= -Inf should be false")

  // Infinity compared to itself
  if (!(posInf <= posInf)) throw new Error("+Inf <= +Inf should be true")
  if (!(posInf >= posInf)) throw new Error("+Inf >= +Inf should be true")
  if (!(negInf <= negInf)) throw new Error("-Inf <= -Inf should be true")
  if (posInf < posInf) throw new Error("+Inf < +Inf should be false")
  if (negInf > negInf) throw new Error("-Inf > -Inf should be false")

  console.log("verified")
}
