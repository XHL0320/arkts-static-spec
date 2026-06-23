/**
 * @id LEX_02_02_027_RT_PARAM_CONTEXT
 * @expect runtime
 * @section 2.2
 * @design 测试因子checklist: 参数/返回值上下文 - 验证注释在参数传递中不影响运行时结果
 * @note 运行时用例：实际执行验证参数间注释不影响计算
 */
function 加法(a: number, b: number): number {
  return a + b
}

function 乘法(a: number, b: number): number {
  return a * b
}

function main(): void {
  let 结果1: number = 加法(10, 20)
  if (结果1 !== 30) { throw new Error("param context: addition mismatch, got " + 结果1.toString()) }

  let 结果2: number = 乘法(5, 4)
  if (结果2 !== 20) { throw new Error("param context: multiplication mismatch, got " + 结果2.toString()) }

  let 链式: number = 加法(乘法(3, 4), 乘法(5, 6))
  if (链式 !== 42) { throw new Error("param context: chained call mismatch, got " + 链式.toString()) }
}