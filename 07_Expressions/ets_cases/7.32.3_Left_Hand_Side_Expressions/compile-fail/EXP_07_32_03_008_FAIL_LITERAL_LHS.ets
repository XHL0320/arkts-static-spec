/**
 * @id EXP_07_32_03_008_FAIL_LITERAL_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证数值/字符串/布尔字面量不能作为左值表达式：int 字面量 5、string 字面量 "hello"、boolean 字面量 true 等均不可出现在赋值左侧
 * @note 反向用例：字面量不是五种有效左值形式之一，应产生 compile-time error
 */
function main(): void {
  let x: int = 0;

  // int 字面量作为左值（应报错）
  5 = x;

  console.log("done");
}
