/**
 * @id LEX_02_08_023_RUNTIME_EQUALITY_RESULT
 * @expect runtime
 * @section 2.8
 * @design 相等性运算符 == != === !== 运行时结果
 * @note 运行时用例：实际执行验证语义正确性
 */
function main(): void {
  let a: number = 5
  let b: number = 5
  let c: number = 6
  if (!(a === b)) { throw new Error("=== failed") }
  if (a === c) { throw new Error("=== wrong on diff") }
  if (!(a !== c)) { throw new Error("!== failed") }
  if (!(a == b)) { throw new Error("== failed") }
  if (a != b) { throw new Error("!= wrong on equal") }
}
