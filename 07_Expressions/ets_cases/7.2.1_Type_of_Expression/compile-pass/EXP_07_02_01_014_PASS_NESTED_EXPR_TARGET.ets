/**
 * @id EXP_07_02_01_014_PASS_NESTED_EXPR_TARGET
 * @expect compile-pass
 * @section 7.2.1
 * @design 嵌套表达式中的 target type 传递
 * @note 正向用例：验证嵌套表达式类型推断
 */
function testNestedExprTarget(): void {
  let a: int = (1 + 2) * 3
  let b: string = "val = " + 42
  let c: boolean = 3 < 5 && true
}
