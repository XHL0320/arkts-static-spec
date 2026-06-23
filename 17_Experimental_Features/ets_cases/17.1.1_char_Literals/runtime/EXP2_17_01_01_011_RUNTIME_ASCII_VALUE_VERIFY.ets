/**
 * @id EXP2_17_01_01_011_RUNTIME_ASCII_VALUE_VERIFY
 * @expect runtime
 * @section 17.1.1
 * @design ASCII char 字面量值验证：验证 c'a' 等于 0x61，c'0' 等于 0x30
 * @note 运行时用例：实际执行验证 ASCII char 字面量的码点值
 */
function main(): void {
  let ch_a: char = c'a'
  let ch_0: char = c'0'
  // c'a' should equal 0x61 (97)
  if (!(ch_a == 0x61)) {
    throw new Error("assertion failed: c'a' should equal 0x61, got comparison false")
  }
  if (!(ch_a == 97)) {
    throw new Error("assertion failed: c'a' should equal 97")
  }
  // c'0' should equal 0x30 (48)
  if (!(ch_0 == 0x30)) {
    throw new Error("assertion failed: c'0' should equal 0x30")
  }
  // c'A' should equal 65
  let ch_A: char = c'A'
  if (!(ch_A == 65)) {
    throw new Error("assertion failed: c'A' should equal 65")
  }
  console.log("verified")
}
