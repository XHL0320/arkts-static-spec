/**
 * @id GEN_05_02_02_008_PASS_PARTIAL_INST_CONSTRUCTOR
 * @expect compile-pass
 * @section 5.2.2
 * @design 构造函数中new表达式的partial instantiation
 * @note spec: new X<Object,T>, new X<T,string>
 */
class X008<T1, T2> {}
class Z008<T> {
  f1: X008<Object, T>
  f2: X008<T, string>
  constructor() { this.f1 = new X008<Object, T>(); this.f2 = new X008<T, string>() }
}