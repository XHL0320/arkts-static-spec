/**
 * @id LEX_02_01_013_PASS_LONE_LOW_SURROGATE
 * @expect compile-pass
 * @section 2.1
 * @design 当前编译器允许字符串中存在孤立低代理(U+DC00)，记录实际行为 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testLoneLowSurrogate(): void {
  let s: string = "\uDC00"
}
