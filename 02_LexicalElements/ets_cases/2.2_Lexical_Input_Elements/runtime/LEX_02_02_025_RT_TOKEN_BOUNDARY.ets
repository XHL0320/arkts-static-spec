/**
 * @id LEX_02_02_025_RT_TOKEN_BOUNDARY
 * @expect runtime
 * @section 2.2
 * @design Token边界识别正确: foo()bar 不可调用但 a+b a-b 各为独立表达式 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let a: int = 5
  let b: int = 3
  let c: int = a + b
  let d: int = a - b
  if (c !== 8) { throw new Error("c !== 8") }
  if (d !== 2) { throw new Error("d !== 2") }
}
