/*
 * @id SEM_15_02_00_028_PASS_SMART_FUNC_instanceof_narrowing
 * @expect compile-pass
 * @section 15.2
 * @design 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。
 * @note Cross-cutting smart type scope case: global/top-level and function-scope behavior must be checked for every section.
 */

class SmartBase {}
class SmartDerived extends SmartBase {
  onlyDerived(): string {
    return "derived"
  }
}

function main(): void {
  let b: SmartBase = new SmartDerived()
  if (b instanceof SmartDerived) {
    arktest.assertEQ(b.onlyDerived(), "derived")
  }
}



