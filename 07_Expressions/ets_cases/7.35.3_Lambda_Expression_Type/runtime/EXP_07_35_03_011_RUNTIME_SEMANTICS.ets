/**
 * @id EXP_07_35_03_011_RUNTIME_SEMANTICS
 * @expect runtime
 * @section 7.35.3
 * @design 验证 Lambda 表达式类型在运行时语义的正确性：显式类型、推断类型、参数传递等
 * @note 运行时用例：实际执行验证 lambda 调用返回值的正确性
 */

// 高阶函数类型别名
type IntBinaryOp = (x: int, y: int) => int

function applyOp(a: int, b: int, op: IntBinaryOp): int {
  return op(a, b)
}

function makeAdder(base: int): (x: int) => int {
  return (x: int): int => x + base
}

function main(): void {
  // 1. 显式返回类型 lambda
  const f1: () => int = (): int => 42
  let r1: int = f1()
  if (r1 != 42) {
    throw new Error("assertion failed: expected 42, got " + r1)
  }

  // 2. 推断返回类型（表达式体）
  const f2: (x: int) => int = (x: int) => x * 2
  let r2: int = f2(21)
  if (r2 != 42) {
    throw new Error("assertion failed: expected 42, got " + r2)
  }

  // 3. 推断返回类型（块体）
  const f3: () => int = () => { return 123 }
  let r3: int = f3()
  if (r3 != 123) {
    throw new Error("assertion failed: expected 123, got " + r3)
  }

  // 4. 上下文推断参数类型
  const f4: (x: string) => int = x => x.length
  let r4: int = f4("hello")
  if (r4 != 5) {
    throw new Error("assertion failed: expected 5, got " + r4)
  }

  // 5. 无参 lambda
  const f5: () => string = (): string => "world"
  let r5: string = f5()
  if (r5 != "world") {
    throw new Error("assertion failed: expected 'world', got " + r5)
  }

  // 6. Lambda 作为参数传递（高阶函数）
  let sum: int = applyOp(10, 32, (x: int, y: int): int => x + y)
  if (sum != 42) {
    throw new Error("assertion failed: expected 42, got " + sum)
  }

  // 7. Lambda 作为返回类型
  let add5: (x: int) => int = makeAdder(5)
  let r7: int = add5(37)
  if (r7 != 42) {
    throw new Error("assertion failed: expected 42, got " + r7)
  }

  // 8. 多参数 lambda
  const f8: (x: int, y: int) => int = (x: int, y: int): int => x - y
  let r8: int = f8(50, 8)
  if (r8 != 42) {
    throw new Error("assertion failed: expected 42, got " + r8)
  }

  // 9. 无参 lambda 块体
  const f9: () => boolean = () => { return true }
  let r9: boolean = f9()
  if (r9 != true) {
    throw new Error("assertion failed: expected true, got " + r9)
  }

  console.log("verified")
}
