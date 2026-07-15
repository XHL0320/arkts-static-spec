/**
 * @id GEN_05_02_02_007_PASS_PARTIAL_INST_FIELD
 * @expect compile-pass
 * @section 5.2.2
 * @design 字段类型中的partial instantiation
 * @note spec: f1: X<Object, T>, f2: X<T, string>
 */
class X007<T1, T2> {}
class Z007<T> {
  f1: X007<Object, T>
  f2: X007<T, string>
  constructor() { this.f1 = new X007<Object, T>(); this.f2 = new X007<T, string>() }
}