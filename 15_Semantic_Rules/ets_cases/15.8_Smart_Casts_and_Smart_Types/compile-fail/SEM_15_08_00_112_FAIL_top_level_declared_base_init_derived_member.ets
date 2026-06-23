/*
 * @id SEM_15_08_00_112_FAIL_top_level_declared_base_init_derived_member
 * @expect compile-fail
 * @section 15.8
 * @design 顶层 Base 声明变量用 Derived 初始化，未显式缩窄不应访问 Derived 独有成员。
 */

class Base {}
class Derived extends Base {
  onlyDerived(): string {
    return "derived"
  }
}

let b: Base = new Derived()
let s: string = b.onlyDerived()

function main(): void {}



