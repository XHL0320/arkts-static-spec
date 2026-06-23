/**
 * @id EXP_07_14_014_FAIL_PREFIX_DECREMENT
 * @expect compile-fail
 * @section 7.14
 * @design 验证链式操作符在前置递减中产生编译时错误：--x?.y 不允许
 * @note 反向用例：?. 在前置递减表达式中，编译时错误
 */
class C {
  f: int = 1;
}

function main(): void {
  let x: C | undefined = new C();
  --x?.f;
}
