/**
 * @id LEX_02_06_031_FAIL_TYPE_KEYWORD
 * @expect compile-fail
 * @section 2.6
 * @design 类型关键字 int 不能作为标识符
 * @note 反向用例：let int 应失败
 */
function testTypeKeyword(): void {
  let int: int = 1
}
