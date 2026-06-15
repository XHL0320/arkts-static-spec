/**
 * @id LEX_02_07_024_FAIL_TYPE_KW_STRING
 * @expect compile-fail
 * @section 2.7
 * @design 类型关键字 string 不能作为标识符
 * @note 反向用例：let string 应编译失败
 */
function test_024(): void {
  let string: int = 1
}
