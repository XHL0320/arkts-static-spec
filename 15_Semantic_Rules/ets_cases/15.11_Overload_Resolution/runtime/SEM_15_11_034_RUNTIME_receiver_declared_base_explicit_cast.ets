/*
 * @id SEM_15_11_034_RUNTIME_receiver_declared_base_explicit_cast
 * @expect runtime
 * @section 15.11
 * @design Derived 显式 cast 为 Base 后调用 overload，应选择 Base overload set。
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
  let b: Base = d as Base
  arktest.assertEQ(b.pick(9), "base-number")
}



