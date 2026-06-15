/**
 * @id LEX_02_07_007_FAIL_HARD_KW_NEW
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 new 不能作为标识符
 * @note 反向用例：let new 应编译失败
 */
function test_007(): void {
  let new: int = 1
}
