/**
 * @id CON_06_04_02_012_FAIL_LONG_TO_INT_SHORT
 * @expect compile-fail
 * @section 6.4.2
 * @design long→int|short: long不在联合中且所有成员更小，应编译失败
 * @note 反向用例：值类型不在联合且无更大成员应失败
 */
function testLongToIntShortFail(): void {
  let l: long = 100
  let u: int | short = l
}
