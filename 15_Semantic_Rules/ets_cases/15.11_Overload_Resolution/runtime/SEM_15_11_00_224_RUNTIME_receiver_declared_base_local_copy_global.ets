/*
 * @id SEM_15_11_00_224_RUNTIME_receiver_declared_base_local_copy_global
 * @expect runtime
 * @section 15.11
 * @design 全局 Derived 复制到函数局部 Base 后调用 overload，应选择 Base overload set。
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

let gd: Derived = new Derived()

function main(): void {
  let b: Base = gd
  arktest.assertEQ(b.pick(9), "base-number")
}



