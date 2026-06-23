/**
 * @id STM_08_12_028_FAIL_NO_RETURN_NON_VOID
 * @expect compile-fail
 * @section 8.12
 * @design 非 void 函数没有 return 语句应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function mustReturnInt(): int { let x: int = 5 }
function testNoReturnNonVoidFail(): void {
  mustReturnInt()
}
