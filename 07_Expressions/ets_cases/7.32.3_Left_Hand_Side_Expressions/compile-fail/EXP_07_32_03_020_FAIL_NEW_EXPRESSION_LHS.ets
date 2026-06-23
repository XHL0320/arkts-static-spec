/**
 * @id EXP_07_32_03_020_FAIL_NEW_EXPRESSION_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证 new 表达式不能作为左值：new Foo() 不可出现在赋值左侧
 * @note 反向用例：new 表达式不是五种有效左值形式之一，应产生 compile-time error
 */

class Foo {}

function main(): void {
  let x: Foo = new Foo();

  // new 表达式作为左值（应报错）
  new Foo() = x;

  console.log("done");
}
