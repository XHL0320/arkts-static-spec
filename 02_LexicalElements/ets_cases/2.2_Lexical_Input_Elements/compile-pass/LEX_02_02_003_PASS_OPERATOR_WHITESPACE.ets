/**
 * @id LEX_02_02_003_PASS_OPERATOR_WHITESPACE
 * @expect compile-pass
 * @section 2.2
 * @design 运算符周围的空白风格不影响解析: a+b, a + b, a  +  b * @note 正向用例：验证该特性编译通过的正确用法

 */
function testOperatorWhitespace(): void {
  let a: int = 5
  let b: int = 3
  let c: int = a + b
  let d: int = a+b
  let e: int = a  +  b
  let f: int = a - b
  let g: int = a*b
  let h: int = a / b
}
