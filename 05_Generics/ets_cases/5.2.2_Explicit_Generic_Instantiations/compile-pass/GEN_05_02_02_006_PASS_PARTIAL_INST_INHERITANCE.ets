/**
 * @id GEN_05_02_02_006_PASS_PARTIAL_INST_INHERITANCE
 * @expect compile-pass
 * @section 5.2.2
 * @design 继承链中的partial instantiation
 * @note spec: class Y<T> extends X<number, T>
 */
class X006<T1, T2> {}
class Y006<T> extends X006<number, T> {}