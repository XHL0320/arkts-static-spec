/**
 * @id CON_06_01_037_RUNTIME_WIDENING_ASSIGNMENT
 * @expect runtime
 * @section 6.1
 * @design 隐式 widening 转换运行时行为：int -> number 值正确保留
 * @note 运行时用例：实际执行验证 widening conversion 值不发生改变
 */
function main(): void {
  let intVal: int = 42
  let numVal: number = intVal
  if (numVal != 42) {
    throw new Error("assertion failed: numVal expected 42, got " + numVal)
  }

  let smallVal: int = 0
  let wideVal: number = smallVal
  if (wideVal != 0) {
    throw new Error("assertion failed: wideVal expected 0")
  }

  let negVal: int = -100
  let negWide: number = negVal
  if (negWide != -100) {
    throw new Error("assertion failed: negWide expected -100")
  }

  console.log("Widening assignment verified")
}
