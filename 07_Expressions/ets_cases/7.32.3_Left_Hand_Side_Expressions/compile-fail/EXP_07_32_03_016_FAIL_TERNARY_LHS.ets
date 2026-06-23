/**
 * @id EXP_07_32_03_016_FAIL_TERNARY_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证三元条件表达式（Ternary Conditional）不能作为左值表达式：(cond ? a : b) 不可出现在赋值左侧
 * @note 反向用例：三元表达式不是五种有效左值形式之一，应产生 compile-time error
 */
function main(): void {
  let x: int = 0;
  let a: int = 1;
  let b: int = 2;
  let cond: boolean = true;

  // 三元表达式作为左值（应报错）
  (cond ? a : b) = x;

  console.log("done");
}
