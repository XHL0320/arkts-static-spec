/**
 * @id LEX_02_07_009_FAIL_HARD_KW_TRUE
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 true 不能作为标识符
 * @note 反向用例：let true 应编译失败
 */
function test_009(): void {
  let true: int = 1
}
