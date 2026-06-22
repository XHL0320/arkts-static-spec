/**
 * @id CON_06_04_02_009_FAIL_INT_TO_BYTE_SHORT
 * @expect compile-fail
 * @section 6.4.2
 * @design int→byte|short: int不在联合中且无更大类型，应编译失败
 * @note 反向用例：值类型不在联合且所有成员更小应失败
 */
function testIntToByteShortFail(): void {
  let i: int = 10
  let u: byte | short = i
}
