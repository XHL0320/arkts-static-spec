/**
 * @id EXP2_17_01_02_012_RUNTIME_CHAR_EQ_INT_VERIFY
 * @expect runtime
 * @section 17.1.2
 * @design 验证 char == int 比较：c'a' == 0x61 为 true（spec 示例）
 * @note 运行时用例：实际执行验证 char 与 int 比较为 true
 */
function main(): void {
  let c: char = c'a'
  // c'a' == 0x61 should be true (spec says so)
  if (!(c == 0x61)) {
    throw new Error("assertion failed: c'a' == 0x61 should be true")
  }
  // c'a' != 0x62 should be true
  if (!(c != 0x62)) {
    throw new Error("assertion failed: c'a' != 0x62 should be true")
  }
  // c'A' == 65 should be true
  let c2: char = c'A'
  if (!(c2 == 65)) {
    throw new Error("assertion failed: c'A' == 65 should be true")
  }
  console.log("verified")
}
