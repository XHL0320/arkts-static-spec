/**
 * @id EXP_07_32_03_011_FAIL_CHAINING_OP_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证包含可选链运算符 ?. 的表达式不能作为左值：obj?.field、obj?.method() 等包含 ?. 的表达式不可出现在赋值左侧
 * @note 反向用例：Spec 明确禁止包含 ?. 运算符的表达式作为左值，应产生 compile-time error
 */

class Data {
  value: int = 0;
}

function main(): void {
  let x: int = 0;
  let d: Data | undefined = new Data();

  // 可选链字段作为左值（应报错）
  d?.value = x;

  console.log("done");
}
