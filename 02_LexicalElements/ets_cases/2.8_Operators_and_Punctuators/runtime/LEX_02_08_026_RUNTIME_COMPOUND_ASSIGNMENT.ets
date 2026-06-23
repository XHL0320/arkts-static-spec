/**
 * @id LEX_02_08_026_RUNTIME_COMPOUND_ASSIGNMENT
 * @expect runtime
 * @section 2.8
 * @design 复合赋值运算符 += -= *= /= %= **= 与 a op= b 等价于 a = a op b
 * @note 运行时用例：实际执行验证语义正确性
 */
function main(): void {
  let x: number = 10
  x += 5
  if (x !== 15) { throw new Error("+= failed") }
  x -= 3
  if (x !== 12) { throw new Error("-= failed") }
  x *= 2
  if (x !== 24) { throw new Error("*= failed") }
  x /= 4
  if (x !== 6) { throw new Error("/= failed") }
  x %= 4
  if (x !== 2) { throw new Error("%= failed") }
  x **= 3
  if (x !== 8) { throw new Error("**= failed") }
}
