/**
 * @id EXP_07_35_02_001_PASS_EXPRESSION_BODY
 * @expect compile-pass
 * @section 7.35.2
 * @design 验证 Lambda 单表达式体（single-expression body）的多种类型：int/string/boolean/double 均可作为单表达式体
 * @note 正向用例：验证单表达式体的正确用法，包括算术、字符串长度、逻辑非等表达式
 */
function main(): void {
  // 单表达式体 — 算术表达式
  const f1: (x: int) => int = (x: int): int => x * 2
  // 单表达式体 — 字符串属性访问
  const f2: (s: string) => int = (s: string): int => s.length
  // 单表达式体 — 逻辑非
  const f3: (b: boolean) => boolean = (b: boolean): boolean => !b
  // 单表达式体 — double 运算
  const f4: (d: double) => double = (d: double): double => d * 3.0

  let r1: int = f1(5)
  let r2: int = f2("abc")
  let r3: boolean = f3(false)
  let r4: double = f4(10.0)

  if (r1 != 10) { throw new Error("FAIL: f1(5)") }
  if (r2 != 3) { throw new Error("FAIL: f2('abc')") }
  if (r3 != true) { throw new Error("FAIL: f3(false)") }
  if (r4 != 30.0) { throw new Error("FAIL: f4(10.0)") }
  console.log("verified")
}
