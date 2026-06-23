/**
 * @id EXP_07_15_015_RUNTIME_NEW_NO_PARENS
 * @expect runtime
 * @section 7.15
 * @design 验证无括号 new A 运行时字段默认值正确
 * @note 运行时用例：无括号 new 表达式值验证
 */
class A {
  v: int = 100
}

function main(): void {
  let a = new A
  if (a.v != 100) {
    throw new Error("assertion failed: expected 100, got " + a.v)
  }
  console.log("verified")
}
