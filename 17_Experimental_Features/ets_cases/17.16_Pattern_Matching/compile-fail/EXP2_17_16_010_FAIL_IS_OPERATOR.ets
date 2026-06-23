/**
 * @id EXP2_17_16_010_FAIL_IS_OPERATOR
 * @expect compile-fail
 * @section 17.16
 * @design spec 提到的 is 运算符——ArkTS 当前实现不支持 is 运算符
 * @note 反向用例：验证 is 运算符触发编译错误 ESY169587。
 *       ArkTS 编译器明确提示 "is operator is not supported. Use 'instanceof' instead".
 */
function testIsOperator(): void {
  let x: Object = "hello"
  let result: boolean = x is string
  console.log(result)
}
