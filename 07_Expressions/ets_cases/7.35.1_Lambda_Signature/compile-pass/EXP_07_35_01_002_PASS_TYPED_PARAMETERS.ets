/**
 * @id EXP_07_35_01_002_PASS_TYPED_PARAMETERS
 * @expect compile-pass
 * @section 7.35.1
 * @design 验证 Lambda 参数带有显式类型注解的多种类型：int/string/boolean/long/double 均可作为参数类型
 * @note 正向用例：验证显式类型注解参数的正确用法
 */
function main(): void {
  // 显式类型注解的单参数 Lambda
  const f: (p: int) => int = (x: int) => x * 2
  const g: (p: string) => int = (s: string) => s.length
  const h: (p: boolean) => boolean = (b: boolean) => !b
  const j: (p: long) => long = (x: long) => x + 1
  const k: (p: double) => double = (d: double) => d * 2.5

  // 验证实际调用值正确
  let r1: int = f(5)
  let r2: int = g("abc")
  let r3: boolean = h(false)
  let r4: long = j(99 as long)
  let r5: double = k(10.0)

  if (r1 != 10) { throw new Error("FAIL: f(5)") }
  if (r2 != 3) { throw new Error("FAIL: g('abc')") }
  if (r3 != true) { throw new Error("FAIL: h(false)") }
  if (r4 != 100) { throw new Error("FAIL: j(99)") }
  if (r5 != 25.0) { throw new Error("FAIL: k(10.0)") }
  console.log("verified")
}
