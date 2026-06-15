/**
 * @id LEX_02_01_018_PASS_CHAR_RELATIONAL_OP
 * @expect compile-pass
 * @section 2.1
 * @design 当前编译器允许char使用关系运算符 < > <= >=，记录实际行为(spec规定不支持但编译器未限制) * @note 正向用例：验证该特性编译通过的正确用法

 */
function testCharRelationalOp(): void {
  let a: char = c'A'
  let b: char = c'B'
  let result: boolean = a < b
}
