/*
 * @id SEM_15_11_036_RT_receiver_smart_instanceof_selects_derived
 * @expect runtime
 * @section 15.11
 * @design Base receiver 经过 instanceof Derived 显式缩窄后调用 overload，可选择 Derived overload set。
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
  let b: Base = new Derived()
  if (b instanceof Derived) {
    arktest.assertEQ(b.pick(9), "derived-int")
  }
}



