/**
 * @id EXP2_17_16_013_FAIL_WRONG_TYPE_CONTEXT
 * @expect compile-fail
 * @section 17.16
 * @design 类型名在错误上下文中使用——instanceof 右侧必须为类型引用
 * @note 反向用例：验证 instanceof 右侧使用非类型表达式触发编译错误
 */
function testWrongTypeContext(): void {
  let x: Object = "hello"
  let typeName: string = "String"
  // typeof / runtime type string is not a valid instanceof operand
  if (x instanceof typeName) {
    console.log("invalid")
  }
}
