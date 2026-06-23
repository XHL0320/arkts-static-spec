/**
 * @id EXP_07_35_01_001_PASS_SINGLE_PARAM_INFERRED
 * @expect compile-pass
 * @section 7.35.1
 * @design 验证单参数 Lambda 的类型从目标类型上下文推断：参数无显式类型注解，由赋值目标类型提供上下文推断
 * @note 正向用例：验证参数类型由赋值上下文推断的正确用法
 */
function main(): void {
  // 从目标类型推断参数类型
  const f: (p: int) => int = x => x
  const g: (p: string) => string = x => x
  const h: (p: boolean) => boolean = x => x
  const j: (p: double) => double = x => x

  // 单参数带括号推断
  const k: (p: long) => long = (x) => x

  // 验证实际调用值正确
  let r1: int = f(42)
  let r2: string = g("hello")
  let r3: boolean = h(true)
  let r4: double = j(3.14)
  let r5: long = k(100 as long)

  if (r1 != 42) { throw new Error("FAIL: f(42)") }
  if (r2 != "hello") { throw new Error("FAIL: g('hello')") }
  if (r3 != true) { throw new Error("FAIL: h(true)") }
  if (r4 != 3.14) { throw new Error("FAIL: j(3.14)") }
  if (r5 != 100) { throw new Error("FAIL: k(100)") }
  console.log("verified")
}
