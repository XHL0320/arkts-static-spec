/**
 * @id CON_06_01_034_RUNTIME_RETURN_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 返回上下文运行时行为：函数返回值正确传递
 * @note 运行时用例：实际执行验证返回语义
 */
function compute(): int {
  let a: int = 10
  let b: int = 20
  return a + b
}

function getGreeting(): string {
  return "hi"
}

function getPositive(): boolean {
  return true
}

function main(): void {
  let sum: int = compute()
  if (sum != 30) {
    throw new Error("assertion failed: compute() expected 30, got " + sum)
  }

  let greeting: string = getGreeting()
  if (greeting != "hi") {
    throw new Error("assertion failed: getGreeting() expected 'hi'")
  }

  let flag: boolean = getPositive()
  if (flag != true) {
    throw new Error("assertion failed: getPositive() expected true")
  }

  console.log("Return context verified")
}
