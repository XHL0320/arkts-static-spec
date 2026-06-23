/**
 * @id EXP_07_32_03_010_FAIL_ARITHMETIC_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证算术表达式（Arithmetic Expression）不能作为左值表达式：加法、减法、乘法等二元运算符表达式不可出现在赋值左侧
 * @note 反向用例：算术表达式不是五种有效左值形式之一，应产生 compile-time error
 */
function main(): void {
  let x: int = 0;
  let a: int = 5;
  let b: int = 3;

  // 加法表达式作为左值（应报错）
  (a + b) = x;

  console.log("done");
}
