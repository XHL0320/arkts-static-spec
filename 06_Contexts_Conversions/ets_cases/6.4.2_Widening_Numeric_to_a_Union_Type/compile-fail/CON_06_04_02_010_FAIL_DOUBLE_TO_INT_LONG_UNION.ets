/**
 * @id CON_06_04_02_010_FAIL_DOUBLE_TO_INT_LONG_UNION
 * @expect compile-fail
 * @section 6.4.2
 * @design double→int|long: 联合中无double或更大类型，应编译失败
 * @note 反向用例：float/double在无浮点成员的联合中失败
 */
function testDoubleToIntLongUnionFail(): void {
  let d: double = 3.14
  let u: int | long = d
}
