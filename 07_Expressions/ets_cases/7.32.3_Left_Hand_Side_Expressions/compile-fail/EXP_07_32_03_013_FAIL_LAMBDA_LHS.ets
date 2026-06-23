/**
 * @id EXP_07_32_03_013_FAIL_LAMBDA_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证 Lambda 表达式不能作为左值表达式：Lambda（箭头函数）不可出现在赋值左侧
 * @note 反向用例：Lambda 表达式不是五种有效左值形式之一，应产生 compile-time error
 */
function main(): void {
  let x: int = 0;

  // Lambda 表达式作为左值（应报错）
  (() => {} ) = x;

  console.log("done");
}
