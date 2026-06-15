/**
 * @id LEX_02_07_003_FAIL_HARD_KW_CONST
 * @expect compile-fail
 * @section 2.7
 * @design 硬关键字 const 不能作为标识符
 * @note 反向用例：let const 应编译失败
 */
function test_003(): void {
  let const: int = 1
}
