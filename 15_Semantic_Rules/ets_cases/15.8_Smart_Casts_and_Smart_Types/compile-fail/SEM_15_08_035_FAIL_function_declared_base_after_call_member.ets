/*
 * @id SEM_15_08_035_FAIL_function_declared_base_after_call_member
 * @expect compile-fail
 * @section 15.8
 * @design Base 声明变量由 Derived 初始化后经历函数调用，不能假设仍可按 Derived 独有成员使用。
 */

class Base {}
class Derived extends Base {
  onlyDerived(): string {
    return "derived"
  }
}

function sideEffect(): void {}

function main(): void {
  let d: Derived = new Derived()
  let b: Base = d
  sideEffect()
  b.onlyDerived()
}



