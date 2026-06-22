/**
 * @id CON_06_05_013_RUNTIME_INT_TO_BYTE
 * @expect runtime
 * @section 6.5
 * @design int.toByte() 低位截断: 保留低8位，符号可能改变
 * @note 运行时用例：验证 int→byte 的位截断
 */
function main(): void {
  let i1: int = 100
  if (i1.toByte() != 100) { throw new Error("100.toByte() should be 100") }

  let i2: int = 255
  if (i2.toByte() != -1) { throw new Error("255.toByte() should be -1 (overflow to -1)") }

  let i3: int = 128
  if (i3.toByte() != -128) { throw new Error("128.toByte() should be -128") }

  let i4: int = 0
  if (i4.toByte() != 0) { throw new Error("0.toByte() should be 0") }

  console.log("Int to byte truncation verified")
}
