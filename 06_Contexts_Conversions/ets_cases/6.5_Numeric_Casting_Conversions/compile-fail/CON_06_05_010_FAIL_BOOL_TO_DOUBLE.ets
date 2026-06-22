/**
 * @id CON_06_05_010_FAIL_BOOL_TO_DOUBLE
 * @expect compile-fail
 * @section 6.5
 * @design boolean.toDouble(): 非数值类型无此方法，应编译失败
 * @note 反向用例：toDouble() 仅适用于数值类型
 */
function testBoolToDoubleFail(): void {
  let b: boolean = true
  let d: double = b.toDouble()
}
