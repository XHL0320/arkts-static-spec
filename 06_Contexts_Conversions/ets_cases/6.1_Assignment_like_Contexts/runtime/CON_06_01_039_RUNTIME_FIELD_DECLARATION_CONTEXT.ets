/**
 * @id CON_06_01_039_RUNTIME_FIELD_DECLARATION_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 字段声明上下文运行时行为：类字段初始值正确设置
 * @note 运行时用例：实际执行验证字段声明赋值语义
 */
class Counter {
  start: int = 0
  step: int = 1
  label: string = "count"
}

function main(): void {
  let c: Counter = new Counter()
  if (c.start != 0) {
    throw new Error("assertion failed: c.start expected 0, got " + c.start)
  }
  if (c.step != 1) {
    throw new Error("assertion failed: c.step expected 1")
  }
  if (c.label != "count") {
    throw new Error("assertion failed: c.label expected 'count'")
  }

  console.log("Field declaration context verified")
}
