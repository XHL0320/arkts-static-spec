/*
 * @id SEM_15_08_034_PASS_function_declared_base_reassigned_base
 * @expect compile-pass
 * @section 15.8
 * @design Base 声明变量先保存 Derived 后重新赋值为 Base，后续按 Base 使用。
 */

class Base {
  name(): string {
    return "base"
  }
}
class Derived extends Base {}

function main(): void {
  let b: Base = new Derived()
  b = new Base()
  arktest.assertEQ(b.name(), "base")
}



