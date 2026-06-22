/**
 * @id CON_06_05_003_PASS_DOUBLE_TO_INT
 * @expect compile-pass
 * @section 6.5
 * @design double.toInt(): 与 spec 示例一致 pi.toInt()
 * @note 正向用例：spec 中的 process_int(pi.toInt()) 模式
 */
function testDoubleToInt(): void {
  let pi: double = 3.14
  let i: int = pi.toInt()
}
