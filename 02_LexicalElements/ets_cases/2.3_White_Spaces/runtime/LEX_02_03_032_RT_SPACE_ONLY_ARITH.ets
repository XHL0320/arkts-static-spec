/**
 * @id LEX_02_03_032_RT_SPACE_ONLY_ARITH
 * @expect runtime
 * @section 2.3
 * @design 仅使用 Space 的运算结果正确 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let a: int = 10
  let b: int = 3
  let r: int = a + b * 2
  if (r !== 16) { throw new Error("r !== 16") }
}
