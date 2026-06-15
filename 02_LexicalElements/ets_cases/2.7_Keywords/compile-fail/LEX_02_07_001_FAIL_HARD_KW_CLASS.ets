/**
 * @id LEX_02_07_001_FAIL_HARD_KW_CLASS
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 class 不能作为标识符
 * @note 反向用例：let class 应编译失败
 */
function test_001(): void {
  let class: int = 1
}
