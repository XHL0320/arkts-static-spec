/**
 * @id EXP_07_35_01_003_PASS_MULTI_PARAM_WITH_TYPES
 * @expect compile-pass
 * @section 7.35.1
 * @design 验证多参数 Lambda 带显式类型注解：同类型和混合类型的多参数签名
 * @note 正向用例：验证多参数带类型注解的正确用法
 */
function main(): void {
  // 同类型多参数
  const add: (a: int, b: int) => int = (x: int, y: int) => x + y
  const mult: (a: double, b: double) => double = (x: double, y: double) => x * y

  // 混合类型多参数
  const concat: (s: string, n: int) => string = (s: string, n: int) => s + n
  const repeat: (s: string, count: int) => string = (s: string, count: int) => {
    let result: string = ""
    let i: int = 0
    while (i < count) {
      result = result + s
      i++
    }
    return result
  }

  // 三个参数
  const sum3: (a: int, b: int, c: int) => int = (x: int, y: int, z: int) => x + y + z

  // 验证实际调用值正确
  let r1: int = add(3, 4)
  let r2: double = mult(2.5, 4.0)
  let r3: string = concat("hello ", 42)
  let r4: string = repeat("ab", 3)
  let r5: int = sum3(10, 20, 30)

  if (r1 != 7) { throw new Error("FAIL: add(3,4)") }
  if (r2 != 10.0) { throw new Error("FAIL: mult(2.5,4.0)") }
  if (r3 != "hello 42") { throw new Error("FAIL: concat") }
  if (r4 != "ababab") { throw new Error("FAIL: repeat") }
  if (r5 != 60) { throw new Error("FAIL: sum3") }
  console.log("verified")
}
