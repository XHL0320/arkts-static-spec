/**
 * @id CON_06_01_032_RUNTIME_ASSIGNMENT_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 赋值上下文运行时行为：变量赋值后读取值应为赋值后的新值
 * @note 运行时用例：实际执行验证赋值语义
 */
function main(): void {
  let x: int = 10
  if (x != 10) {
    throw new Error("assertion failed: initial x expected 10")
  }

  x = 20
  if (x != 20) {
    throw new Error("assertion failed: x after assignment expected 20, got " + x)
  }

  x = -5
  if (x != -5) {
    throw new Error("assertion failed: x after second assignment expected -5, got " + x)
  }

  let s: string = "first"
  s = "second"
  if (s != "second") {
    throw new Error("assertion failed: s expected 'second', got " + s)
  }

  console.log("Assignment context verified")
}
