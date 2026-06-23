/**
 * @id LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER
 * @expect compile-fail
 * @section 2.1
 * @design 反向用例：spec/cookbook规定char不能与number直接比较，但编译器实际允许
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：cookbook/compatibility.md 明确禁止 char→number widening，但编译器实际支持
 *       分类：D 类（Spec 与实现不一致）
 */
function testCharCompareNumber(): void {
  let ch: char = c'A'
  let n: number = 65
  let result: boolean = ch == n
}
