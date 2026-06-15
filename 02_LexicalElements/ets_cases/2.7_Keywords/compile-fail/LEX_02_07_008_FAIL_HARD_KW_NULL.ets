/**
 * @id LEX_02_07_008_FAIL_HARD_KW_NULL
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 null 不能作为标识符
 * @note 反向用例：let null 应编译失败
 */
function test_008(): void {
  let null: int = 1
}
