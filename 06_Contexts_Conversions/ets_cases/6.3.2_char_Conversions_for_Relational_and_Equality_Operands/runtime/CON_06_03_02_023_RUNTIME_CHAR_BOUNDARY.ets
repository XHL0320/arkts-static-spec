/**
 * @id CON_06_03_02_023_RUNTIME_CHAR_BOUNDARY
 * @expect runtime
 * @section 6.3.2
 * @design char 边界值: 极小/极大 char 值与 int 比较
 * @note 运行时用例：实际执行验证 char 边界值比较语义
 */
function main(): void {
  let low: char = c'\u0000'
  let high: char = c'\uffff'

  let zero: int = 0
  if (!(low == zero)) {
    throw new Error("assertion failed: '\\u0000' == 0 should be true")
  }
  if (low > zero) {
    throw new Error("assertion failed: '\\u0000' > 0 should be false")
  }

  if (!(high > zero)) {
    throw new Error("assertion failed: '\\uffff' > 0 should be true")
  }

  let diff: char = c' '
  let spaceCode: int = 32
  if (!(diff == spaceCode)) {
    throw new Error("assertion failed: ' ' == 32 should be true")
  }

  console.log("Char boundary comparison verified")
}
