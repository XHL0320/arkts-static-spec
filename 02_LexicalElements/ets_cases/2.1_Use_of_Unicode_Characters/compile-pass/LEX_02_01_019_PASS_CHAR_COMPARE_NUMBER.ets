/**
 * @id LEX_02_01_019_PASS_CHAR_COMPARE_NUMBER
 * @expect compile-pass
 * @section 2.1
 * @design char 与 number 比较符合 spec/experimental.md 规定，编译器支持
 * @note spec/experimental.md 明确允许 char 与 number 比较（spec 权威高于 cookbook）
 *       编译器行为与 spec 一致
 */
function testCharCompareNumber(): void {
  let ch: char = c'A'
  let n: number = 65
  let result: boolean = ch == n
}
