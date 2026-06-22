/**
 * @id CON_06_04_01_011_FAIL_INT_TO_BYTE
 * @expect compile-fail
 * @section 6.4.1
 * @design int→byte 是 narrowing，无隐式 widening 转换，应编译失败
 * @note 反向用例：反向 narrowing 不应编译通过
 */
function testIntToByteFail(): void {
  let i: int = 10
  let b: byte = i
}
