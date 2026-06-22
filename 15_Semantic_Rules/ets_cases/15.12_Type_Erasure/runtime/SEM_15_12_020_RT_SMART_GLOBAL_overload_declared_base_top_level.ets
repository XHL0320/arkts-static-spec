/*
 * @id SEM_15_12_020_RT_SMART_GLOBAL_overload_declared_base_top_level
 * @expect runtime
 * @section 15
 * @design 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。
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

let globalDerived: OverDerived = new OverDerived()
let globalBase: OverBase = globalDerived
let globalResult: string = globalBase.pick(9)

function main(): void {
  arktest.assertEQ(globalResult, "base-number")
}



