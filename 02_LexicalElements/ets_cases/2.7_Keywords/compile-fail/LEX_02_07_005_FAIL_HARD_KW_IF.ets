/**
 * @id LEX_02_07_005_FAIL_HARD_KW_IF
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 if 不能作为标识符
 * @note 反向用例：let if 应编译失败
 */
function test_005(): void {
  let if: int = 1
}
