/*
 * @id SEM_15_11_029_RT_receiver_declared_base_from_return_function
 * @expect runtime
 * @section 15.11
 * @design 函数返回 Derived 但赋给 Base 后调用 overload，应选择 Base overload set。
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

function makeDerived(): Derived {
  return new Derived()
}

function main(): void {
  let b: Base = makeDerived()
  arktest.assertEQ(b.pick(9), "base-number")
}



