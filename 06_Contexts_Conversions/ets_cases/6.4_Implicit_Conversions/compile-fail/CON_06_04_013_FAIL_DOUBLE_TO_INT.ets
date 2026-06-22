/**
 * @id CON_06_04_013_FAIL_DOUBLE_TO_INT
 * @expect compile-fail
 * @section 6.4
 * @design double→int 是 narrowing，无隐式转换，应编译失败
 * @note 反向用例：浮点到整数的 narrowing 无隐式转换
 */
function testDoubleToIntFail(): void {
  let a: double = 3.14
  let b: int = a
}
