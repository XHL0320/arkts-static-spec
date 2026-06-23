/**
 * @id LEX_02_08_022_RUNTIME_RELATIONAL_RESULT
 * @expect runtime
 * @section 2.8
 * @design 关系运算符 < > <= >= 运行时返回 boolean
 * @note 运行时用例：实际执行验证语义正确性
 */
function main(): void {
  let a: number = 5
  let b: number = 10
  if (!(a < b)) { throw new Error("less-than failed") }
  if (a > b) { throw new Error("greater-than wrong") }
  if (!(a <= 5)) { throw new Error("less-equal failed") }
  if (!(b >= 10)) { throw new Error("greater-equal failed") }
}
