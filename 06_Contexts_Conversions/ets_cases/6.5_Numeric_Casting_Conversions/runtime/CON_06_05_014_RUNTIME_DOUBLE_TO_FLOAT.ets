/**
 * @id CON_06_05_014_RUNTIME_DOUBLE_TO_FLOAT
 * @expect runtime
 * @section 6.5
 * @design double.toFloat() IEEE 754 舍入
 * @note 运行时用例：验证 double→float 可能精度变化
 */
function main(): void {
  let d1: double = 3.14
  let f1: float = d1.toFloat()

  let d2: double = 1.0
  if (d2.toFloat() != 1) { throw new Error("1.0.toFloat() should be 1") }

  let d3: double = 0.0
  if (d3.toFloat() != 0) { throw new Error("0.0.toFloat() should be 0") }

  console.log("Double to float conversion verified")
}
