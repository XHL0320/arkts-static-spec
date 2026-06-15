/**
 * @id LEX_02_02_019_RT_WHITESPACE_ARITH_RESULT
 * @expect runtime
 * @section 2.2
 * @design 不同空白风格(无空白/单空白/多空白)的算术表达式结果一致 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let a: int = 10
  let b: int = 3
  let r1: int = a + b
  let r2: int = a+b
  let r3: int = a  +   b
  if (r1 !== 13) { throw new Error("r1 !== 13") }
  if (r2 !== 13) { throw new Error("r2 !== 13") }
  if (r3 !== 13) { throw new Error("r3 !== 13") }
}
