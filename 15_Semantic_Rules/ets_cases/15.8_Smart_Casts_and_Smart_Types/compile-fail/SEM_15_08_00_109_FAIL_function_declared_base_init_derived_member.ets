/*
 * @id SEM_15_08_00_109_FAIL_function_declared_base_init_derived_member
 * @expect compile-fail
 * @section 15.8
 * @design 函数体内 Base 声明变量用 Derived 初始化，未显式缩窄不应访问 Derived 独有成员。
 */

class Base {}
class Derived extends Base {
  onlyDerived(): string {
    return "derived"
  }
}

function main(): void {
  let b: Base = new Derived()
  b.onlyDerived()
}



