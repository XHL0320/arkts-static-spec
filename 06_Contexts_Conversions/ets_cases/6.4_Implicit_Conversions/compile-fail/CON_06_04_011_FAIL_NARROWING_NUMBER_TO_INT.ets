/**
 * @id CON_06_04_011_FAIL_NARROWING_NUMBER_TO_INT
 * @expect compile-fail
 * @section 6.4
 * @design number→int 是 narrowing，无隐式转换，应编译失败
 * @note 反向用例：narrowing 无对应隐式转换，应编译失败
 */
function testNarrowingNumberToIntFail(): void {
  let a: number = 3.14
  let b: int = a
}
