/**
 * @id LEX_02_02_020_RT_COMMENT_NO_EFFECT
 * @expect runtime
 * @section 2.2
 * @design 单行注释和多行注释不影响变量值 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let x: int = 42 // this is a comment
  /* another comment */
  let y: int = 100
  if (x !== 42) { throw new Error("x !== 42") }
  if (y !== 100) { throw new Error("y !== 100") }
}
