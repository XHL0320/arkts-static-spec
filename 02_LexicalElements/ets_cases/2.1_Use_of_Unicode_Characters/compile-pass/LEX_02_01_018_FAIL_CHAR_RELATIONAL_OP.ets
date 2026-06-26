/**
 * @id LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP
 * @expect compile-pass
 * @section 2.1
 * @design char 关系运算符符合 spec/experimental.md 规定，编译器支持
 * @note spec/experimental.md 明确允许 char 关系运算符（spec 权威高于 cookbook）
 *       编译器行为与 spec 一致
 */
function testCharRelationalOp(): void {
  let a: char = c'A'
  let b: char = c'B'
  let result: boolean = a < b
}
