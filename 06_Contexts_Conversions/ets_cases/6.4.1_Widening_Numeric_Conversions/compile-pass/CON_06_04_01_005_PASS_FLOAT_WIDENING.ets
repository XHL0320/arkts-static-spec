/**
 * @id CON_06_04_01_005_PASS_FLOAT_WIDENING
 * @expect compile-pass
 * @section 6.4.1
 * @design float→double widening
 * @note 正向用例：验证 float 的 1 种 widening 转换
 */
function testFloatWidening(): void {
  let i: int = 3
  let f: float = i
  let d: double = f
}
