/**
 * @id LEX_02_07_027_FAIL_TYPE_KW_VOID
 * @expect compile-fail
 * @section 2.7
 * @design 类型关键字 void 不能作为标识符
 * @note 反向用例：let void 应编译失败
 */
function test_027(): void {
  let void: int = 1
}
