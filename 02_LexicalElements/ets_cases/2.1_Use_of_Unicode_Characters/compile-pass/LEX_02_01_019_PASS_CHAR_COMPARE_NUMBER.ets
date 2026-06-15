/**
 * @id LEX_02_01_019_PASS_CHAR_COMPARE_NUMBER
 * @expect compile-pass
 * @section 2.1
 * @design 当前编译器允许char与number直接比较，记录实际行为(spec规定不支持但编译器未限制) * @note 正向用例：验证该特性编译通过的正确用法

 */
function testCharCompareNumber(): void {
  let ch: char = c'A'
  let n: number = 65
  let result: boolean = ch == n
}
