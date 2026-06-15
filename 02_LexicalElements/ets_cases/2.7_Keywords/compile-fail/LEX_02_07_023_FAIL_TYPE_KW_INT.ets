/**
 * @id LEX_02_07_023_FAIL_TYPE_KW_INT
 * @expect compile-fail
 * @section 2.7
 * @design 类型关键字 int 不能作为标识符
 * @note 反向用例：let int 应编译失败
 */
function test_023(): void {
  let int: int = 1
}
