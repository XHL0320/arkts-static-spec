/**
 * @id LEX_02_07_006_FAIL_HARD_KW_RETURN
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 return 不能作为标识符
 * @note 反向用例：let return 应编译失败
 */
function test_006(): void {
  let return: int = 1
}
