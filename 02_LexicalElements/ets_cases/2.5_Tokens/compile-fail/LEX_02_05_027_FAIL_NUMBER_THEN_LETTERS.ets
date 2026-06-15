/**
 * @id LEX_02_05_027_FAIL_NUMBER_THEN_LETTERS
 * @expect compile-fail
 * @section 2.5
 * @design 数字字面量后直接接字母，最长匹配应失败
 * @note 反向用例：123abc 不是合法 Token
 */
function testNumberThenLetters(): void {
  let x: int = 123abc
}
