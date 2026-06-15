/**
 * @id LEX_02_07_025_FAIL_TYPE_KW_BOOLEAN
 * @expect compile-fail
 * @section 2.7
 * @design 类型关键字 boolean 不能作为标识符
 * @note 反向用例：let boolean 应编译失败
 */
function test_025(): void {
  let boolean: int = 1
}
