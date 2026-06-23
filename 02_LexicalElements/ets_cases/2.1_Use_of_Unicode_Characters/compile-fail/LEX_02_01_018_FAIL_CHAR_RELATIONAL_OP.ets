/**
 * @id LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP
 * @expect compile-fail
 * @section 2.1
 * @design 反向用例：spec/cookbook规定char不支持关系运算符 < > <= >=，但编译器实际允许
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：cookbook/compatibility.md 明确禁止 char 关系运算符，但编译器实际支持
 *       分类：D 类（Spec 与实现不一致）
 */
function testCharRelationalOp(): void {
  let a: char = c'A'
  let b: char = c'B'
  let result: boolean = a < b
}
