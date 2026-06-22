/**
 * @id CON_06_01_031_RUNTIME_DECLARATION_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 变量声明上下文运行时行为：声明赋值后读取值应与初始值一致
 * @note 运行时用例：实际执行验证变量声明的赋值语义
 */
function main(): void {
  let intVar: int = 42
  if (intVar != 42) {
    throw new Error("assertion failed: intVar expected 42, got " + intVar)
  }

  let strVar: string = "hello"
  if (strVar != "hello") {
    throw new Error("assertion failed: strVar expected 'hello', got " + strVar)
  }

  let boolVar: boolean = true
  if (boolVar != true) {
    throw new Error("assertion failed: boolVar expected true")
  }

  let doubleVar: double = 3.14
  if (doubleVar != 3.14) {
    throw new Error("assertion failed: doubleVar expected 3.14")
  }

  console.log("Declaration context verified")
}
