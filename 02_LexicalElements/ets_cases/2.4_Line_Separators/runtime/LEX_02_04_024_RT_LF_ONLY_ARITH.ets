/**
 * @id LEX_02_04_024_RT_LF_ONLY_ARITH
 * @expect runtime
 * @section 2.4
 * @design 仅使用 LF 风格代码的算术运行结果
 * @note 运行时用例：LF 风格运算正确性
 */
function main(): void {
  let a: int = 10
  let b: int = 3
  let r: int = a + b * 2
  if (r !== 16) { throw new Error("r !== 16") }
}
