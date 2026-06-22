/**
 * @id CON_06_05_006_PASS_INT_TO_BYTE
 * @expect compile-pass
 * @section 6.5
 * @design int.toByte() 截断低8位
 * @note 正向用例
 */
function testIntToByte(): void {
  let i: int = 100
  let b: byte = i.toByte()
}
