/**
 * @id CON_06_04_02_004_PASS_INT_TO_BYTE_LONG
 * @expect compile-pass
 * @section 6.4.2
 * @design int→byte|long: byte更小忽略, 仅long更大 → OK
 * @note 正向用例：一个成员更小被忽略，仅一个更大成员有效
 */
function testIntToByteLong(): void {
  let i: int = 10
  let u: byte | long = i
}
