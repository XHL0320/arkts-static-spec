/**
 * @id EXP_07_32_03_017_FAIL_NULLISH_COALESCING_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证 Nullish Coalescing 表达式（??）不能作为左值表达式：(a ?? b) 不可出现在赋值左侧
 * @note 反向用例：Nullish Coalescing 表达式不是五种有效左值形式之一，应产生 compile-time error
 */
function main(): void {
  let x: int = 0;
  let a: int | undefined = 5;

  // Nullish Coalescing 表达式作为左值（应报错）
  (a ?? 99) = x;

  console.log("done");
}
