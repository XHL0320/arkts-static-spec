/**
 * @id CON_06_03_014_FAIL_BOOL_ADDITIVE
 * @expect compile-fail
 * @section 6.3
 * @design 布尔值参与加法: boolean + int, 非数值类型，应编译失败
 * @note 反向用例：非数值类型用于算术运算符应编译失败
 */
function testBoolAdditiveFail(): void {
  let b: boolean = true
  let n: int = 5
  let r: int = b + n
}
