/**
 * @id LEX_02_07_010_FAIL_HARD_KW_INSTANCEOF
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 instanceof 不能作为标识符
 * @note 反向用例：let instanceof 应编译失败
 */
function test_010(): void {
  let instanceof: int = 1
}
