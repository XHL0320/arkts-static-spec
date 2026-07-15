/**
 * @id GEN_05_01_04_108_PASS_WILDCARD_IDENTITY_ASSIGN
 * @expect compile-pass
 * @section 5.1.4
 * @design 两个instanceof推断的X<*>类型可互相赋值
 * @note spec_original: a1=a2 OK as X<*> and X<*> are identical
 */
class X108<T> { p: T; constructor(v: T) { this.p = v } }
function foo108(a: Any, b: Any): void {
  if (a instanceof X108 && b instanceof X108) {
    let a1 = a
    let a2 = b
    a1 = a2
  }
}