/**
 * @id LEX_02_02_023_RT_COMMENT_INSIDE_EXPR
 * @expect runtime
 * @section 2.2
 * @design 表达式内的注释不影响计算结果 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let a: int = 10 /* add */ + /* twenty */ 20
  if (a !== 30) { throw new Error("a !== 30") }
}
