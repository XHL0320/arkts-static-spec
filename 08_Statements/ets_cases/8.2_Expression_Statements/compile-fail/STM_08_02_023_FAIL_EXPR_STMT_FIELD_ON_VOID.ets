/**
 * @id STM_08_02_023_FAIL_EXPR_STMT_FIELD_ON_VOID
 * @expect compile-fail
 * @section 8.2
 * @design 对 void 函数返回值访问字段应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function voidFunc(): void {}
function testFieldOnVoidFail(): void {
  voidFunc().field
  console.log("never")
}
