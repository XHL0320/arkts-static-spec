/*
 * @id SEM_15_11_040_RT_SMART_FUNC_overload_declared_base_function
 * @expect runtime
 * @section 15
 * @design 函数体内 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。
 * @note Cross-cutting smart type scope case: global/top-level and function-scope behavior must be checked for every section.
 */

class OverBase {
  overload pick { pickNumber, pickString }
  pickNumber(p: number): string { return "base-number" }
  pickString(p: string): string { return "base-string" }
}

class OverDerived extends OverBase {
  pickInt(p: int): string { return "derived-int" }
  overload pick { pickInt, pickNumber, pickString }
}

function main(): void {
  let localDerived: OverDerived = new OverDerived()
  let localBase: OverBase = localDerived
  arktest.assertEQ(localBase.pick(9), "base-number")
}



