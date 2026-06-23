/**
 * @id CLS_09_07_006_FAIL_STATIC_ABSTRACT_COMBO
 * @expect compile-fail
 * @section 9.7
 * @design static不能与abstract组合 — spec: abstract method cannot have static modifier
 * @note 反向用例：static abstract方法应编译失败
 */
abstract class Bad006 {
  static abstract foo(): void
}
