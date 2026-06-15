/**
 * @id LEX_02_04_025_RT_CRLF_ARITH
 * @expect runtime
 * @section 2.4
 * @design CRLF (Windows) 风格代码的算术运行结果
 * @note 运行时用例：CRLF 风格不影响运行结果
 */
function main(): void {
  let a: int = 10
  let b: int = 3
  let r: int = a + b * 2
  if (r !== 16) { throw new Error("r !== 16") }
}
