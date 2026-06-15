/**
 * @id LEX_02_03_024_FAIL_SPACE_IN_NUMBER
 * @expect compile-fail
 * @section 2.3
 * @design 数字字面量内含 Space 应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testSpaceInNumber(): void {
  let n: int = 12 34
}
