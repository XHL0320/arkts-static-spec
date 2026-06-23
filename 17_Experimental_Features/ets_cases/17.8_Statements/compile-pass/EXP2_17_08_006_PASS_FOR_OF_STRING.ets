/**
 * @id EXP2_17_08_006_PASS_FOR_OF_STRING
 * @expect compile-pass
 * @section 17.8
 * @design 验证 for-of 遍历字符串在 ArkTS 中编译通过
 * @note 正向用例：验证 for-of 遍历字符串字符的标准用法编译通过
 */
function testForOfString(): void {
  let text: string = "ArkTS"
  let charCount: number = 0
  for (let ch of text) {
    charCount = charCount + 1
  }

  // for-of with empty string
  let empty: string = ""
  let iterated: boolean = false
  for (let ch of empty) {
    iterated = true
  }

  // for-of string with break
  let foundChar: boolean = false
  for (let ch of text) {
    if (ch == "T") {
      foundChar = true
      break
    }
  }
}
