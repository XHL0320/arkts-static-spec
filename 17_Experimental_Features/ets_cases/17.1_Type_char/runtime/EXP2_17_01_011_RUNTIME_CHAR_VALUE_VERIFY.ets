/**
 * @id EXP2_17_01_011_RUNTIME_CHAR_VALUE_VERIFY
 * @expect runtime
 * @section 17.1
 * @design char 变量值验证：验证 char 字面量对应的 Unicode 码点值
 * @note 运行时用例：实际执行验证 char 值与整数的关系
 */
function main(): void {
  let ch: char = c'a'
  // As per spec, char can be compared with numeric types
  // c'a' should equal 0x61 (97)
  if (!(ch == 0x61)) {
    throw new Error("assertion failed: c'a' should equal 0x61")
  }
  let ch2: char = c'A'
  if (!(ch2 == 65)) {
    throw new Error("assertion failed: c'A' should equal 65")
  }
  console.log("verified")
}
