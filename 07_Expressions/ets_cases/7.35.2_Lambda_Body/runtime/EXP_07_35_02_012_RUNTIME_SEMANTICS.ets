/**
 * @id EXP_07_35_02_012_RUNTIME_SEMANTICS
 * @expect runtime
 * @section 7.35.2
 * @design 运行时验证各种 Lambda 体形式的执行语义：单表达式体、块体 + return、块体多语句、捕获局部变量、捕获实例字段、无参块体
 * @note 运行时用例：验证 Lambda 体在运行时行为正确，共 7 个断言
 */
class Holder {
  factor: int = 10

  getLambda(): () => int {
    return (): int => {
      return this.factor
    }
  }
}

function main(): void {
  // 1. 单表达式体返回值正确
  const f1: (x: int) => int = (x: int): int => x * 2
  let r1: int = f1(5)
  if (r1 != 10) { throw new Error("FAIL: expression body: " + r1) }

  // 2. 块体 + return 返回值正确
  const f2: (x: int) => int = (x: int): int => {
    return x + 1
  }
  let r2: int = f2(10)
  if (r2 != 11) { throw new Error("FAIL: block body return: " + r2) }

  // 3. 块体多条语句返回值正确
  const f3: (x: int) => int = (x: int): int => {
    let y: int = x * 3
    return y + 2
  }
  let r3: int = f3(5)
  if (r3 != 17) { throw new Error("FAIL: block multi stmt: " + r3) }

  // 4. 捕获外围局部变量
  let captured: int = 100
  const f4: (x: int) => int = (x: int): int => x + captured
  let r4: int = f4(50)
  if (r4 != 150) { throw new Error("FAIL: capture local: " + r4) }

  // 5. 捕获实例字段（隐式 this）
  let h: Holder = new Holder()
  let f5: () => int = h.getLambda()
  let r5: int = f5()
  if (r5 != 10) { throw new Error("FAIL: capture instance: " + r5) }

  // 6. 无参 lambda 块体返回值正确
  const f6: () => int = (): int => {
    return 99
  }
  let r6: int = f6()
  if (r6 != 99) { throw new Error("FAIL: no params block: " + r6) }

  // 7. 块体多语句 — 字符串操作
  const f7: (s: string, n: int) => string = (s: string, n: int): string => {
    let tag: string = s + ":"
    return tag + n
  }
  let r7: string = f7("val", 42)
  if (r7 != "val:42") { throw new Error("FAIL: block string: " + r7) }

  console.log("verified")
}
