/**
 * @id CON_06_04_01_003_PASS_INT_WIDENING
 * @expect compile-pass
 * @section 6.4.1
 * @design int→long/float/double 全部 widening
 * @note 正向用例：验证 int 的 3 种 widening 转换
 */
function testIntWidening(): void {
  let i: int = 3
  let l: long = i
  let f: float = i
  let d: double = i
}
