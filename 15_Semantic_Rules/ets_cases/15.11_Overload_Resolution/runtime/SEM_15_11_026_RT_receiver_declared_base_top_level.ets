/*
 * @id SEM_15_11_026_RT_receiver_declared_base_top_level
 * @expect runtime
 * @section 15.11
 * @design 顶层语句：子类对象赋给父类声明变量后调用 overload，应按 receiver 声明静态类型 Base 的 overload set 解析。
 * @note Companion top-level case for function-scope consistency.
 */

class Base {
  overload pick { pickNumber, pickString }

  pickNumber(p: number): string {
    return "base-number"
  }

  pickString(p: string): string {
    return "base-string"
  }
}

class Derived extends Base {
  pickInt(p: int): string {
    return "derived-int"
  }

  overload pick { pickInt, pickNumber, pickString }
}

let d: Derived = new Derived()
let b: Base = d

let topDerived: string = d.pick(9)
let topBase: string = b.pick(9)

function main(): void {
  arktest.assertEQ(topDerived, "derived-int")
  arktest.assertEQ(topBase, "base-number")
}



