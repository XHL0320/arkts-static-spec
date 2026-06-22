/**
 * @id CON_06_01_033_RUNTIME_CALL_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 调用上下文运行时行为：实参值正确传递给形参
 * @note 运行时用例：实际执行验证函数调用参数传递语义
 */
function identity(val: int): int {
  return val
}

function concatStrings(a: string, b: string): string {
  return a + b
}

function main(): void {
  let result: int = identity(42)
  if (result != 42) {
    throw new Error("assertion failed: identity(42) expected 42, got " + result)
  }

  let negResult: int = identity(-7)
  if (negResult != -7) {
    throw new Error("assertion failed: identity(-7) expected -7")
  }

  let joined: string = concatStrings("hello", "world")
  if (joined != "helloworld") {
    throw new Error("assertion failed: concat expected 'helloworld', got " + joined)
  }

  console.log("Call context verified")
}
