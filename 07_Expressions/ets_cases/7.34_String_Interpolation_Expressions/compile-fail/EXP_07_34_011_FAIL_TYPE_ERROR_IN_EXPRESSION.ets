/**
 * @id EXP_07_34_011_FAIL_TYPE_ERROR_IN_EXPRESSION
 * @expect compile-fail
 * @section 7.34
 * @design 验证嵌入表达式中的类型错误应产生编译时错误：在 int 类型上调用 string 类型的方法（如 substring）应报错
 * @note 反向用例：嵌入表达式本身的类型错误（非插值语法问题）应产生 compile-time error
 */
function main(): void {
  let x: int = 42;

  // int 类型没有 substring 方法，嵌入表达式中应报错
  let r: string = `${x.substring(1)}`;

  console.log("done");
}
