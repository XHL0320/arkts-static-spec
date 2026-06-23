/*
 * @id SEM_15_08_038_FAIL_SMART_FUNC_function_base_member_without_narrow
 * @expect compile-fail
 * @section 15
 * @design 函数体内 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。
 * @note Cross-cutting smart type scope case: global/top-level and function-scope behavior must be checked for every section.
 */

class SmartBase {}
class SmartDerived extends SmartBase {
  onlyDerived(): string {
    return "derived"
  }
}

function main(): void {
  let localBase: SmartBase = new SmartDerived()
  let text: string = localBase.onlyDerived()
}



