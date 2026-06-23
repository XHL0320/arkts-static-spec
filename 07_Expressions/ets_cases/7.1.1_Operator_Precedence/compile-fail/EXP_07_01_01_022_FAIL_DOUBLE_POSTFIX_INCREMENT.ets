/**
 * @id EXP_07_01_01_022_FAIL_DOUBLE_POSTFIX_INCREMENT
 * @expect compile-fail
 * @section 7.1.1
 * @design 后置 `++` 不能重复应用，`a++` 返回右值不能再次递增
 * @note 反向用例：验证后置递增的结果不可再递增
 */
function testDoublePostfixIncrement(): void {
  let a: int = 1
  a++++
}
