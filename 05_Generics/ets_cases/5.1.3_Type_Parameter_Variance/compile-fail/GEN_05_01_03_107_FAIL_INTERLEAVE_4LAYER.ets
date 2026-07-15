/**
 * @id GEN_05_01_03_107_FAIL_INTERLEAVE_4LAYER
 * @expect compile-fail
 * @section 5.1.3
 * @design 4层variance interleaving中in T出现在out位置
 * @note spec: interleaving flips positions; in T ending up in out-position = CTE
 */
class Y107<in T> {
  bar(p: () => () => () => T): void {}
}
