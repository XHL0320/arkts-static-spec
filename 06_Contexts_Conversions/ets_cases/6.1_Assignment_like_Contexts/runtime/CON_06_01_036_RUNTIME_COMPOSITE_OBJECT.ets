/**
 * @id CON_06_01_036_RUNTIME_COMPOSITE_OBJECT
 * @expect runtime
 * @section 6.1
 * @design 复合字面量上下文（对象）运行时行为：对象字面量字段值正确初始化
 * @note 运行时用例：实际执行验证对象字面量字段赋值语义
 */
interface Rect {
  width: int
  height: int
  label: string
}

function main(): void {
  let r: Rect = {
    width: 100,
    height: 50,
    label: "box"
  }
  if (r.width != 100) {
    throw new Error("assertion failed: r.width expected 100, got " + r.width)
  }
  if (r.height != 50) {
    throw new Error("assertion failed: r.height expected 50")
  }
  if (r.label != "box") {
    throw new Error("assertion failed: r.label expected 'box'")
  }

  console.log("Composite object context verified")
}
