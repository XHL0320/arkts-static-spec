/*
 * @id SEM_15_08_00_111_FAIL_function_declared_base_from_derived_var_member
 * @expect compile-fail
 * @section 15.8
 * @design 函数体内 Base 声明变量来自 Derived 变量，未显式缩窄不应访问 Derived 独有成员。
 */

class Base {}
class Derived extends Base {
  onlyDerived(): string {
    return "derived"
  }
}

function main(): void {
  let d: Derived = new Derived()
  let b: Base = d
  b.onlyDerived()
}



