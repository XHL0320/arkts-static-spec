/*
 * @id SEM_15_11_025_RT_receiver_declared_base_function_scope
 * @expect runtime
 * @section 15.11
 * @design 函数体内：子类对象赋给父类声明变量后调用 overload，应按 receiver 声明静态类型 Base 的 overload set 解析。
 * @note Regression case from ArkTS_Overload_Java_Swift_Comparison_Report.md.
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

function main(): void {
  let d: Derived = new Derived()
  let b: Base = d

  arktest.assertEQ(d.pick(9), "derived-int")
  arktest.assertEQ(b.pick(9), "base-number")
}



