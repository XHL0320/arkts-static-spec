/**
 * @id LEX_02_08_021_RUNTIME_ARITHMETIC_RESULT
 * @expect runtime
 * @section 2.8
 * @design 算术运算符 + - * / % ** 运行时结果验证
 * @note 运行时用例：实际执行验证语义正确性
 */
function main(): void {
  let a: number = 10
  let b: number = 3
  if ((a + b) !== 13) { throw new Error("addition failed") }
  if ((a - b) !== 7) { throw new Error("subtraction failed") }
  if ((a * b) !== 30) { throw new Error("multiplication failed") }
  if ((a % b) !== 1) { throw new Error("modulo failed") }
  if ((2 ** 10) !== 1024) { throw new Error("power failed") }
}
