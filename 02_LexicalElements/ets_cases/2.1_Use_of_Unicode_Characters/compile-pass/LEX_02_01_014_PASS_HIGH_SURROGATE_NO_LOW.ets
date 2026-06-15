/**
 * @id LEX_02_01_014_PASS_HIGH_SURROGATE_NO_LOW
 * @expect compile-pass
 * @section 2.1
 * @design 当前编译器允许高代理后跟BMP字符而非低代理，记录实际行为 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testHighSurrogateNoLow(): void {
  let s: string = "\uD800A"
}
