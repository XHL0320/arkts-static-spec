/**
 * @id GEN_05_01_03_105_FAIL_INTERLEAVE_3LAYER
 * @expect compile-fail
 * @section 5.1.3
 * @design 3层variance interleaving中out T出现在in位置
 * @note spec: interleaving flips positions; out T ending up in in-position = CTE
 */
class X105<out T> {
  foo(p: (p: T) => void): void {}
}
