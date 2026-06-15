/**
 * @id LEX_02_07_002_FAIL_HARD_KW_LET
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 let 不能作为标识符
 * @note 反向用例：let let 应编译失败
 */
function test_002(): void {
  let let: int = 1
}
