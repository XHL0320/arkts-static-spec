/*
 * @id SEM_15_11_030_RT_receiver_declared_base_field_access
 * @expect runtime
 * @section 15.11
 * @design 字段声明为 Base 且保存 Derived 后调用 overload，应选择 Base overload set。
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
class Holder {
  b: Base = new Derived()
  run(): string {
    return this.b.pick(9)
  }
}

function main(): void {
  arktest.assertEQ(new Holder().run(), "base-number")
}



