/**
 * @id CON_06_01_038_RUNTIME_CONST_DECLARATION
 * @expect runtime
 * @section 6.1
 * @design const 声明上下文运行时行为：常量值正确初始化
 * @note 运行时用例：实际执行验证 const 声明赋值语义
 */
function main(): void {
  const PI: double = 3.14159
  if (PI != 3.14159) {
    throw new Error("assertion failed: PI expected 3.14159")
  }

  const MAX: int = 100
  if (MAX != 100) {
    throw new Error("assertion failed: MAX expected 100")
  }

  const GREETING: string = "hello"
  if (GREETING != "hello") {
    throw new Error("assertion failed: GREETING expected 'hello'")
  }

  const YES: boolean = true
  if (YES != true) {
    throw new Error("assertion failed: YES expected true")
  }

  console.log("Const declaration context verified")
}
