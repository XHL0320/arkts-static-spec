/*
 * @id SEM_15_08_029_FAIL_function_declared_base_init_derived_assign
 * @expect compile-fail
 * @section 15.8
 * @design 函数体内 Base 声明变量用 Derived 初始化，不能直接赋给 Derived 变量。
 */

class Base {}
class Derived extends Base {}

function main(): void {
  let b: Base = new Derived()
  let d: Derived = b
}



