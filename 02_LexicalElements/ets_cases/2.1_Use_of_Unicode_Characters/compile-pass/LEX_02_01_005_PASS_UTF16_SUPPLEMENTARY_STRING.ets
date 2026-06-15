/**
 * @id LEX_02_01_005_PASS_UTF16_SUPPLEMENTARY_STRING
 * @expect compile-pass
 * @section 2.1
 * @design 补充平面字符字符串: \u{1F600}扩展转义、emoji、混合BMP与补充平面 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testUTF16SupplementaryString(): void {
  let s1: string = "\u{1F600}"
  let s2: string = "A\u{1F600}B"
  let s3: string = "\u{1F600}\u{1F601}"
}
