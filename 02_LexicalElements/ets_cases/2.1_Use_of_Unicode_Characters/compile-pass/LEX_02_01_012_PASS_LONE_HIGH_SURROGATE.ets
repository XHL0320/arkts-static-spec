/**
 * @id LEX_02_01_012_PASS_LONE_HIGH_SURROGATE
 * @expect compile-pass
 * @section 2.1
 * @design 当前编译器允许字符串中存在孤立高代理(U+D800)，记录实际行为 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testLoneHighSurrogate(): void {
  let s: string = "\uD800"
}
