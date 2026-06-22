/*
 * @id SEM_15_11_027_RT_receiver_declared_base_direct_new_function
 * @expect runtime
 * @section 15.11
 * @design 函数体内 let b: Base = new Derived() 后调用 overload，应选择 Base overload set。
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
  arktest.assertEQ(b.pick(9), "base-number")
}



