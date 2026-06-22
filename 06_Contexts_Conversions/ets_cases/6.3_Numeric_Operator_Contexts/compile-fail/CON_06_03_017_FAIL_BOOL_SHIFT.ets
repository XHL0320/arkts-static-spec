/**
 * @id CON_06_03_017_FAIL_BOOL_SHIFT
 * @expect compile-fail
 * @section 6.3
 * @design 布尔值参与移位: boolean << int, 非数值类型，应编译失败
 * @note 反向用例：非数值类型用于移位运算应编译失败
 */
function testBoolShiftFail(): void {
  let b: boolean = true
  let n: int = 2
  let r: int = b << n
}
