/**
 * @id EXP_07_14_011_FAIL_POSTFIX_INCREMENT
 * @expect compile-fail
 * @section 7.14
 * @design 验证链式操作符在后置递增中产生编译时错误：x?.y++ 不允许
 * @note 反向用例：?. 在后置递增表达式中，编译时错误
 */
class C {
  f: int = 1;
}

function main(): void {
  let x: C | undefined = new C();
  x?.f++;
}
