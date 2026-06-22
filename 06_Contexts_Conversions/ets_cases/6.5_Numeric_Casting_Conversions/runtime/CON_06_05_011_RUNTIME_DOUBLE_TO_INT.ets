/**
 * @id CON_06_05_011_RUNTIME_DOUBLE_TO_INT
 * @expect runtime
 * @section 6.5
 * @design double.toInt() 向零舍入: 3.14→3, -3.14→-3, 3.9→3
 * @note 运行时用例：验证 double→int 截断行为
 */
function main(): void {
  let d1: double = 3.14
  if (d1.toInt() != 3) { throw new Error("3.14.toInt() should be 3") }

  let d2: double = -3.14
  if (d2.toInt() != -3) { throw new Error("-3.14.toInt() should be -3") }

  let d3: double = 3.9
  if (d3.toInt() != 3) { throw new Error("3.9.toInt() should be 3 (truncation)") }

  let d4: double = -3.9
  if (d4.toInt() != -3) { throw new Error("-3.9.toInt() should be -3") }

  let d5: double = 0.0
  if (d5.toInt() != 0) { throw new Error("0.0.toInt() should be 0") }

  console.log("Double to int truncation verified")
}
