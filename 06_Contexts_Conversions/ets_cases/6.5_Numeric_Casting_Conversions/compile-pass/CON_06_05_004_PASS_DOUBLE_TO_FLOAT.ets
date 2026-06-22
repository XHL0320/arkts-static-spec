/**
 * @id CON_06_05_004_PASS_DOUBLE_TO_FLOAT
 * @expect compile-pass
 * @section 6.5
 * @design double.toFloat() 转换: IEEE 754 舍入规则
 * @note 正向用例
 */
function testDoubleToFloat(): void {
  let d: double = 3.14
  let f: float = d.toFloat()
}
