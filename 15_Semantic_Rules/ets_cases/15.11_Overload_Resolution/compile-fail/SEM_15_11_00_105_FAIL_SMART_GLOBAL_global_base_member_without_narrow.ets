/*
 * @id SEM_15_11_00_105_FAIL_SMART_GLOBAL_global_base_member_without_narrow
 * @expect compile-fail
 * @section 15
 * @design 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。
 * @note Cross-cutting smart type scope case: global/top-level and function-scope behavior must be checked for every section.
 */

class SmartBase {}
class SmartDerived extends SmartBase {
  onlyDerived(): string {
    return "derived"
  }
}

let globalBase: SmartBase = new SmartDerived()
let globalText: string = globalBase.onlyDerived()

function main(): void {}



