/*
 * @id SEM_15_08_033_PASS_function_declared_base_instanceof_member
 * @expect compile-pass
 * @section 15.8
 * @design Base 声明变量经过 instanceof Derived 显式缩窄后可访问 Derived 独有成员。
 */

class Base {}
class Derived extends Base {
  onlyDerived(): string {
    return "derived"
  }
}

function main(): void {
  let b: Base = new Derived()
  if (b instanceof Derived) {
    let s: string = b.onlyDerived()
  }
}



