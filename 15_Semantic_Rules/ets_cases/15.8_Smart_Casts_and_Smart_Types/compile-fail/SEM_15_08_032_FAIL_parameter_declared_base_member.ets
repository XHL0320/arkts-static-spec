/*
 * @id SEM_15_08_032_FAIL_parameter_declared_base_member
 * @expect compile-fail
 * @section 15.8
 * @design 函数参数声明为 Base，即使实参为 Derived，函数体内也不能直接访问 Derived 独有成员。
 */

class Base {}
class Derived extends Base {
  onlyDerived(): string {
    return "derived"
  }
}

function useBase(b: Base): string {
  return b.onlyDerived()
}

function main(): void {
  let d: Derived = new Derived()
  useBase(d)
}



