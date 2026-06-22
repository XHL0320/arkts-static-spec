/**
 * @id EXP_07_27_03_006_RUNTIME_STRING_UNICODE
 * @expect runtime
 * @section 7.27.3
 * @design 验证Unicode字符串字典序比较的运行时行为：按Unicode码点逐字符比较
 * @note 运行时用例：实际执行验证Unicode字符串的关系比较结果
 */
function main(): void {
  // ASCII ordering: digits < uppercase < lowercase
  // '0'..'9' = 48-57, 'A'..'Z' = 65-90, 'a'..'z' = 97-122
  if (!("9" < "A")) throw new Error("\"9\" < \"A\" should be true (48-57 < 65)")
  if (!("Z" < "a")) throw new Error("\"Z\" < \"a\" should be true (65-90 < 97)")

  // Unicode characters beyond ASCII
  // Greek letters: α (U+03B1=945), β (U+03B2=946), γ (U+03B3=947)
  if (!("α" < "β")) throw new Error("α < β should be true (945 < 946)")
  if (!("β" < "γ")) throw new Error("β < γ should be true (946 < 947)")
  if (!("α" < "γ")) throw new Error("α < γ should be true (945 < 947)")

  // CJK characters (higher code points)
  // 一 (U+4E00), 二 (U+4E8C), 三 (U+4E09)
  if (!("一" < "二")) throw new Error("一 < 二 should be true (4E00 < 4E8C)")
  if (!("二" < "三")) throw new Error("二 < 三 should be true (4E8C < 4E09)")
  if (!("一" < "三")) throw new Error("一 < 三 should be true (4E00 < 4E09)")

  // Multi-byte emoji ordering
  // 😀 (U+1F600), 😁 (U+1F601)
  if (!("😀" < "😁")) throw new Error("😀 < 😁 should be true (1F600 < 1F601)")

  // Mixed scripts: Latin vs Greek
  // 'a' (U+0061=97) < 'α' (U+03B1=945)
  if (!("a" < "α")) throw new Error("a < α should be true (97 < 945)")
  if (!("α" > "a")) throw new Error("α > a should be true")
  if ("α" < "a") throw new Error("α < a should be false")

  // Equal strings with same Unicode content
  if (!("café" <= "café")) throw new Error("café <= café should be true")
  if (!("café" >= "café")) throw new Error("café >= café should be true")
  if ("café" < "café") throw new Error("café < café should be false")

  // Unicode prefix comparison
  if (!("こん" < "こんにちは")) throw new Error("こん < こんにちは should be true (prefix)")

  console.log("verified")
}
