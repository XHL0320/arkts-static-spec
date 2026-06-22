/**
 * @id CON_06_05_009_FAIL_STRING_TO_INT
 * @expect compile-fail
 * @section 6.5
 * @design string.toInt(): 非数值类型无此方法，应编译失败
 * @note 反向用例：toInt() 仅适用于数值类型
 */
function testStringToIntFail(): void {
  let s: string = "123"
  let i: int = s.toInt()
}
