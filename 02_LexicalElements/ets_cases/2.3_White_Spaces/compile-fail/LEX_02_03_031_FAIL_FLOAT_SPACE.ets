/**
 * @id LEX_02_03_031_FAIL_FLOAT_SPACE
 * @expect compile-fail
 * @section 2.3
 * @design 浮点字面量内含 Space (3 .14) 应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testFloatSpace(): void {
  let pi: double = 3 .14
}
