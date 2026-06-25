/**
 * @id EXP2_CtorOverload_AnonymousImplicitFirst_pass
 * @expect compile-pass
 * @section 17.9.5
 * @design 匿名构造函数隐式放在列表首位
 * @note 正向用例：验证匿名构造函数自动在 overload 首位
 */
class MyBigFloat {
  private s: string
  constructor(v: int) { this.s = "int:" + v }
  constructor fromDbl(v: double) { this.s = "double:" + v }
  constructor fromStr(v: string) { this.s = "string:" + v }
  overload constructor { fromDbl, fromStr }
}
