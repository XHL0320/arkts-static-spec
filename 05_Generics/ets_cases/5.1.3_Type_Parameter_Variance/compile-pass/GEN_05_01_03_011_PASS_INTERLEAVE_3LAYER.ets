/**
 * @id GEN_05_01_03_011_PASS_INTERLEAVE_3LAYER
 * @expect compile-pass
 * @section 5.1.3
 * @design 3层嵌套variance interleaving in-out-in
 * @note spec: foo(p: (p: (p: T1)=>T2)=> T1) {} - in-out-in
 */
class X011<in T1, out T2> {
  foo(p: (p: (p: T1) => T2) => T1): void {}
}