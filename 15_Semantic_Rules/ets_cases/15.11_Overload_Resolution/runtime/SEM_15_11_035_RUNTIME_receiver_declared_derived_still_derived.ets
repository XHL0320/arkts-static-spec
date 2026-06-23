/*
 * @id SEM_15_11_035_RUNTIME_receiver_declared_derived_still_derived
 * @expect runtime
 * @section 15.11
 * @design receiver 声明类型为 Derived 时调用 overload，应选择 Derived overload set。
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

function main(): void {
  let d: Derived = new Derived()
  arktest.assertEQ(d.pick(9), "derived-int")
}



