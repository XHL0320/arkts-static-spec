/**
 * @id CON_06_03_02_021_RUNTIME_CHAR_DOUBLE_COMPARISON
 * @expect runtime
 * @section 6.3.2
 * @design char vs double 关系比较运行时行为：char widening 为 double
 * @note 运行时用例：实际执行验证 char-double 比较语义
 */
function main(): void {
  let c: char = c'A'
  let dSmall: double = 60.0
  let dBig: double = 70.5

  if (!(c > dSmall)) {
    throw new Error("assertion failed: 'A'(65) > 60.0 should be true")
  }
  if (!(c < dBig)) {
    throw new Error("assertion failed: 'A'(65) < 70.5 should be true")
  }

  let dEqual: double = 65.0
  if (!(c == dEqual)) {
    throw new Error("assertion failed: 'A'(65) == 65.0 should be true")
  }

  console.log("Char-double comparison verified")
}
