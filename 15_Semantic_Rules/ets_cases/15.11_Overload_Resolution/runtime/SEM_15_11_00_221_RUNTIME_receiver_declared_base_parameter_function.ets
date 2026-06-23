/*
 * @id SEM_15_11_00_221_RUNTIME_receiver_declared_base_parameter_function
 * @expect runtime
 * @section 15.11
 * @design 函数参数 b: Base 接收 Derived 实参后调用 overload，应选择 Base overload set。
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

function callBase(b: Base): string {
  return b.pick(9)
}

function main(): void {
  let d: Derived = new Derived()
  arktest.assertEQ(callBase(d), "base-number")
}



