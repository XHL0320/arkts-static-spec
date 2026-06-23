/**
 * @id EXP_07_14_010_FAIL_ASSIGNMENT_LHS
 * @expect compile-fail
 * @section 7.14
 * @design 验证链式操作符在赋值左侧产生编译时错误：x?.y = value 不允许
 * @note 反向用例：?. 在赋值左侧（非左值上下文），编译时错误
 */
class C {
  f: int = 1;
}

function main(): void {
  let x: C | undefined = new C();
  x?.f = 42;
}
