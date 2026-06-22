/**
 * @id CON_06_01_012_PASS_DECLARATION_WIDENING
 * @expect compile-pass
 * @section 6.1
 * @design Declaration context: 利用隐式 widening numeric conversion (int -> number) 的声明
 * @note 正向用例：验证赋值上下文允许使用隐式转换的用法
 */
function testDeclarationWidening(): void {
  let wideNum: number = 42
  let wideLong: long = 100
  let wideDouble: double = 1

  let intFromLiteral: int = 10
  let numFromInt: number = intFromLiteral
}
