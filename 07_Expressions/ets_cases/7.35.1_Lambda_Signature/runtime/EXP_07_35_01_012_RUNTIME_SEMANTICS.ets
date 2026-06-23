/**
 * @id EXP_07_35_01_012_RUNTIME_SEMANTICS
 * @expect runtime
 * @section 7.35.1
 * @design 运行时验证各种 Lambda 签名形式的创建和调用语义正确性：类型推断参数/显式类型参数/多参数/无参/返回类型注解
 * @note 运行时用例：验证 Lambda 签名在运行时行为正确，包括类型推断、多参数、显式类型、返回类型注解等场景
 */
function main(): void {
  // 1. 类型推断参数 Lambda 调用值正确
  const f1: (p: int) => int = x => x
  let r1: int = f1(42)
  if (r1 != 42) { throw new Error("FAIL: inferred param: " + r1) }

  // 2. 显式类型参数 Lambda 调用值正确
  const f2: (x: int) => int = (x: int) => x * 2
  let r2: int = f2(5)
  if (r2 != 10) { throw new Error("FAIL: typed param: " + r2) }

  // 3. 多参数 Lambda
  const f3: (a: int, b: int) => int = (x: int, y: int) => x + y
  let r3: int = f3(3, 4)
  if (r3 != 7) { throw new Error("FAIL: multi param: " + r3) }

  // 4. 多参数从上下文推断
  const f4: (a: int, b: int) => int = (x, y) => x + y
  let r4: int = f4(10, 20)
  if (r4 != 30) { throw new Error("FAIL: inferred multi: " + r4) }

  // 5. 无参数 Lambda
  const f5: () => int = () => 99
  let r5: int = f5()
  if (r5 != 99) { throw new Error("FAIL: no params: " + r5) }

  // 6. 带返回类型注解
  const f6: (x: int) => int = (x: int): int => x * x
  let r6: int = f6(6)
  if (r6 != 36) { throw new Error("FAIL: return type: " + r6) }

  // 7. 混合类型多参数
  const f7: (s: string, n: int) => string = (s: string, n: int) => s + n
  let r7: string = f7("n=", 77)
  if (r7 != "n=77") { throw new Error("FAIL: mixed types: " + r7) }

  console.log("verified")
}
