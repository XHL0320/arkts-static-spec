/**
 * @id EXP2_CtorOverload_DifferentParamCount_pass
 * @expect compile-pass
 * @section 17.9.5
 * @design 多个构造函数按参数数量区分
 * @note 正向用例：不同参数数量的命名构造函数重载
 */
class Config2 {
  private desc: string
  constructor emptyCtor() { this.desc = "default" }
  constructor withInt(a: int) { this.desc = "int:" + a }
  constructor withIntStr(a: int, b: string) { this.desc = "int:" + a + ",str:" + b }
  overload constructor { emptyCtor, withInt, withIntStr }
}
