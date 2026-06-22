/**
 * @id CON_06_03_02_024_RUNTIME_CHAR_ALL_RELATIONAL_OPS
 * @expect runtime
 * @section 6.3.2
 * @design char 全关系运算符 < > <= >= 综合运行时行为
 * @note 运行时用例：实际执行综合验证 char 的六种运算符
 */
function main(): void {
  let c: char = c'M'
  let i50: int = 50
  let i77: int = 77
  let i200: int = 200

  if (!(c > i50)) {
    throw new Error("assertion failed: 'M'(77) > 50 should be true")
  }
  if (c > i200) {
    throw new Error("assertion failed: 'M'(77) > 200 should be false")
  }
  if (!(c < i200)) {
    throw new Error("assertion failed: 'M'(77) < 200 should be true")
  }
  if (c < i50) {
    throw new Error("assertion failed: 'M'(77) < 50 should be false")
  }
  if (!(c >= i77)) {
    throw new Error("assertion failed: 'M'(77) >= 77 should be true")
  }
  if (!(c <= i77)) {
    throw new Error("assertion failed: 'M'(77) <= 77 should be true")
  }
  if (c != i77) {
    throw new Error("assertion failed: 'M'(77) != 77 should be false")
  }
  if (!(c == i77)) {
    throw new Error("assertion failed: 'M'(77) == 77 should be true")
  }

  console.log("Char all relational ops verified")
}
