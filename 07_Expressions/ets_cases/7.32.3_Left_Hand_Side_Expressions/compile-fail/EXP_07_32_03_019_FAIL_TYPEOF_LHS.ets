/**
 * @id EXP_07_32_03_019_FAIL_TYPEOF_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证 typeof 表达式不能作为左值表达式：typeof x 不可出现在赋值左侧
 * @note 反向用例：typeof 表达式不是五种有效左值形式之一，应产生 compile-time error
 */
function main(): void {
  let x: int = 0;

  // typeof 表达式作为左值（应报错）
  typeof x = "number";

  console.log("done");
}
