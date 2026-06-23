/**
 * @id EXP_07_32_03_018_FAIL_INSTANCEOF_LHS
 * @expect compile-fail
 * @section 7.32.3
 * @design 验证 instanceof 表达式不能作为左值表达式：(x instanceof T) 不可出现在赋值左侧
 * @note 反向用例：instanceof 表达式不是五种有效左值形式之一，应产生 compile-time error
 */

class Foo {}

function main(): void {
  let x: int = 0;
  let obj: Foo = new Foo();

  // instanceof 表达式作为左值（应报错）
  (obj instanceof Foo) = x;

  console.log("done");
}
