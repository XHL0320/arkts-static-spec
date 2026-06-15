/**
 * @id LEX_02_07_004_FAIL_HARD_KW_FUNCTION
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 function 不能作为标识符
 * @note 反向用例：let function 应编译失败
 */
function test_004(): void {
  let function: int = 1
}
