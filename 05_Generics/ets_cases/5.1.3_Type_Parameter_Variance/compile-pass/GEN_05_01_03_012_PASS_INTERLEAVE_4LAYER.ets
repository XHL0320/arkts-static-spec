/**
 * @id GEN_05_01_03_012_PASS_INTERLEAVE_4LAYER
 * @expect compile-pass
 * @section 5.1.3
 * @design 4层嵌套variance interleaving out-in-out-in
 * @note spec: foo(p: (p: (p: (p: T2)=>T1)=>T2)=> T1) {} - out-in-out-in
 */
class X012<in T1, out T2> {
  foo(p: (p: (p: (p: T2) => T1) => T2) => T1): void {}
}