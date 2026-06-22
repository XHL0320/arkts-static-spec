/**
 * @id CON_06_01_009_PASS_RETURN_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Return context: return 表达式类型与函数返回类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function returnInt(): int {
  return 42
}

function returnString(): string {
  return "result"
}

function returnBool(): boolean {
  return false
}

function returnDouble(): double {
  return 2.72
}

function testReturnBasic(): void {
  let i: int = returnInt()
  let s: string = returnString()
  let b: boolean = returnBool()
  let d: double = returnDouble()
}
