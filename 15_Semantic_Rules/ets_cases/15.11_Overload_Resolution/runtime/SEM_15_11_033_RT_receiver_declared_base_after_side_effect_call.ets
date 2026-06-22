/*
 * @id SEM_15_11_033_RT_receiver_declared_base_after_side_effect_call
 * @expect runtime
 * @section 15.11
 * @design Base 局部变量由 Derived 初始化后经历普通函数调用，调用 overload 仍应基于声明类型。
 */

class Base {
  overload pick { pickNumber, pickString }
  pickNumber(p: number): string { return "base-number" }
  pickString(p: string): string { return "base-string" }
}
class Derived extends Base {
  pickInt(p: int): string { return "derived-int" }
  overload pick { pickInt, pickNumber, pickString }
}

function sideEffect(): void {}

function main(): void {
  let b: Base = new Derived()
  sideEffect()
  arktest.assertEQ(b.pick(9), "base-number")
}



