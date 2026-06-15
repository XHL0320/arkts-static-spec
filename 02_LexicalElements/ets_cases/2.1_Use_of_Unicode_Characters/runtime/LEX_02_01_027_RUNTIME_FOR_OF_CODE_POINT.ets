/**
 * @id LEX_02_01_027_RUNTIME_FOR_OF_CODE_POINT
 * @expect runtime
 * @section 2.1
 * @design for-of按Unicode code point迭代: emoji按code point计数而非代码单元 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let s1: string = "A\u{1F600}B"
  let count1: number = 0
  for (const ch of s1) {
    count1++
  }
  if (count1 !== 3) { throw new Error("for-of should count 3 code points") }

  let s2: string = "\u{1F600}\u{1F601}\u{1F602}"
  let count2: number = 0
  for (const ch of s2) {
    count2++
  }
  if (count2 !== 3) { throw new Error("for-of emoji should count 3 code points") }

  let s3: string = "ABC"
  let chars: string[] = []
  for (const ch of s3) {
    chars.push(ch)
  }
  if (chars.length !== 3) { throw new Error("for-of BMP length mismatch") }
  if (chars[0] !== "A") { throw new Error("for-of BMP first char mismatch") }
}
