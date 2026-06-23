/**
 * @id EXP_07_35_01_004_PASS_NO_PARAMS
 * @expect compile-pass
 * @section 7.35.1
 * @design 验证空参数列表 Lambda () => expr 的正确性，包括不同返回类型的无参 Lambda
 * @note 正向用例：验证空参数列表 Lambda 的正确用法
 */
function main(): void {
  // 空参数列表 Lambda
  const f: () => int = () => 42
  const g: () => string = () => "hello"
  const h: () => boolean = () => true
  const j: () => double = () => 3.14

  // 空参数带块体
  const k: () => int = () => {
    return 99
  }

  // 验证实际调用值正确
  let r1: int = f()
  let r2: string = g()
  let r3: boolean = h()
  let r4: double = j()
  let r5: int = k()

  if (r1 != 42) { throw new Error("FAIL: f()") }
  if (r2 != "hello") { throw new Error("FAIL: g()") }
  if (r3 != true) { throw new Error("FAIL: h()") }
  if (r4 != 3.14) { throw new Error("FAIL: j()") }
  if (r5 != 99) { throw new Error("FAIL: k()") }
  console.log("verified")
}
