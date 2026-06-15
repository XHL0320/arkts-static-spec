/**
 * @id LEX_02_06_030_FAIL_HARD_KEYWORD
 * @expect compile-fail
 * @section 2.6
 * @design 硬关键字 class 不能作为标识符
 * @note 反向用例：let class 应失败
 */
function testHardKeyword(): void {
  let class: int = 1
}
