/**
 * @id LEX_02_05_034_RT_COMPOUND_ASSIGNMENT
 * @expect runtime
 * @section 2.5
 * @design 复合赋值 Token 的运行结果
 * @note 运行时用例：+= -= *= /= %=
 */
function main(): void {
  let x: int = 10
  x += 5
  if (x !== 15) { throw new Error("x !== 15 after +=") }
  x -= 3
  if (x !== 12) { throw new Error("x !== 12 after -=") }
  x *= 2
  if (x !== 24) { throw new Error("x !== 24 after *=") }
  x /= 4
  if (x !== 6) { throw new Error("x !== 6 after /=") }
  x %= 4
  if (x !== 2) { throw new Error("x !== 2 after %=") }
}
