/**
 * @id LEX_02_03_037_RT_MULTI_WS_IN_EXPR
 * @expect runtime
 * @section 2.3
 * @design 表达式内多个空白不影响计算结果 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let r1: int = 1     +     2
  let r2: int = 1		+		2
  let r3: int = 1  +  2
  if (r1 !== 3) { throw new Error("r1 !== 3") }
  if (r2 !== 3) { throw new Error("r2 !== 3") }
  if (r3 !== 3) { throw new Error("r3 !== 3") }
}
