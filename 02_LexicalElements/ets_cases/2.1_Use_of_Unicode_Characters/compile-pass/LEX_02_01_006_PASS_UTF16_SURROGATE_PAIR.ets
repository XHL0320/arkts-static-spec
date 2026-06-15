/**
 * @id LEX_02_01_006_PASS_UTF16_SURROGATE_PAIR
 * @expect compile-pass
 * @section 2.1
 * @design 有效代理对: 高代理+低代理组成有效代理对，与\u{}转义等价 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testUTF16SurrogatePair(): void {
  let s1: string = "\uD83D\uDE00"
  let s2: string = "\u{1F600}"
}
