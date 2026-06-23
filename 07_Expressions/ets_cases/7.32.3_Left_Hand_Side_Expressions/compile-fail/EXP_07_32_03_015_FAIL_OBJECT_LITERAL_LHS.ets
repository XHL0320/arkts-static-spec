/**
 * @id EXP_07_32_03_015_FAIL_OBJECT_LITERAL_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证对象字面量（Object Literal）不能作为左值表达式：{a: 1, b: 2} 不可出现在赋值左侧
 * @note 反向用例：对象字面量不是五种有效左值形式之一，应产生 compile-time error
 */
function main(): void {
  let x: int = 0;

  // 对象字面量作为左值（应报错）
  { a: 1, b: 2 } = x;

  console.log("done");
}
