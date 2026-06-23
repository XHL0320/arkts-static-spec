/**
 * @id EXP_07_27_01_008_RUNTIME_NUMERIC_ZERO
 * @expect runtime
 * @section 7.27.1
 * @design 验证IEEE 754规范中+0与-0的关系比较运行时行为：+0 == -0，因此<=和>=均返回true，<和>均返回false
 * @note 运行时用例：实际执行验证+0.0和-0.0的关系比较结果
 */
function main(): void {
  let posZero: double = 0.0
  let negZero: double = -0.0

  // IEEE 754: +0 and -0 compare equal in value
  // < and > should be false since they are equal
  if (posZero < negZero) throw new Error("+0 < -0 should be false (they are equal)")
  if (negZero < posZero) throw new Error("-0 < +0 should be false (they are equal)")
  if (posZero > negZero) throw new Error("+0 > -0 should be false (they are equal)")
  if (negZero > posZero) throw new Error("-0 > +0 should be false (they are equal)")

  // <= and >= should be true since they are equal
  if (!(posZero <= negZero)) throw new Error("+0 <= -0 should be true")
  if (!(negZero <= posZero)) throw new Error("-0 <= +0 should be true")
  if (!(posZero >= negZero)) throw new Error("+0 >= -0 should be true")
  if (!(negZero >= posZero)) throw new Error("-0 >= +0 should be true")

  // +0 and normal zero
  if (posZero < 0.0) throw new Error("+0 < 0.0 should be false")
  if (posZero > 0.0) throw new Error("+0 > 0.0 should be false")
  if (!(posZero <= 0.0)) throw new Error("+0 <= 0.0 should be true")
  if (!(posZero >= 0.0)) throw new Error("+0 >= 0.0 should be true")

  // -0 vs positive small number
  if (!(negZero < 0.001)) throw new Error("-0 < 0.001 should be true")
  if (negZero > 0.001) throw new Error("-0 > 0.001 should be false")

  console.log("verified")
}
