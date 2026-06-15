/**
 * @id LEX_02_02_022_RT_CONSECUTIVE_EMPTY_LINES
 * @expect runtime
 * @section 2.2
 * @design 连续空行不影响后续语句执行 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let a: int = 1



  let b: int = 2
  let c: int = a + b
  if (c !== 3) { throw new Error("c !== 3") }
}
