/**
 * @id CON_06_03_02_022_RUNTIME_CHAR_CHAR_COMPARISON
 * @expect runtime
 * @section 6.3.2
 * @design char vs char 关系比较运行时行为：均 widening 为 int
 * @note 运行时用例：实际执行验证 char-char 比较语义
 */
function main(): void {
  let a: char = c'A'
  let b: char = c'B'
  let c2: char = c'A'

  if (!(a < b)) {
    throw new Error("assertion failed: 'A' < 'B' should be true")
  }
  if (a > b) {
    throw new Error("assertion failed: 'A' > 'B' should be false")
  }
  if (!(a == c2)) {
    throw new Error("assertion failed: 'A' == 'A' should be true")
  }
  if (a != c2) {
    throw new Error("assertion failed: 'A' != 'A' should be false")
  }
  if (a == b) {
    throw new Error("assertion failed: 'A' != 'B' should be true")
  }

  console.log("Char-char comparison verified")
}
