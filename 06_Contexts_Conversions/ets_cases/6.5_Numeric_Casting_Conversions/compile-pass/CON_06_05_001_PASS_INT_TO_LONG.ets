/**
 * @id CON_06_05_001_PASS_INT_TO_LONG
 * @expect compile-pass
 * @section 6.5
 * @design int.toLong() 标准库转换方法
 * @note 正向用例：使用 .toLong() 进行数值转换
 */
function testIntToLong(): void {
  let i: int = 42
  let l: long = i.toLong()
}
