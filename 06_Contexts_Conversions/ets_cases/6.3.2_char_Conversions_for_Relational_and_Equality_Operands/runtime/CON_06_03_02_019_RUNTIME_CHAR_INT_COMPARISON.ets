/**
 * @id CON_06_03_02_019_RUNTIME_CHAR_INT_COMPARISON
 * @expect runtime
 * @section 6.3.2
 * @design char vs int 关系比较运行时行为：char widening 为 int
 * @note 运行时用例：实际执行验证 char-int 比较语义
 */
function main(): void {
  let c: char = c'Z'
  let iSmall: int = 200
  let iBig: int = 80

  if (!(c < iSmall)) {
    throw new Error("assertion failed: 'Z'(90) < 200 should be true")
  }
  if (!(c > iBig)) {
    throw new Error("assertion failed: 'Z'(90) > 80 should be true")
  }
  if (c > iSmall) {
    throw new Error("assertion failed: 'Z'(90) > 200 should be false")
  }

  let iEqual: int = 90
  if (c != iEqual) {
    throw new Error("assertion failed: 'Z'(90) != 90 should be false")
  }

  console.log("Char-int comparison verified")
}
