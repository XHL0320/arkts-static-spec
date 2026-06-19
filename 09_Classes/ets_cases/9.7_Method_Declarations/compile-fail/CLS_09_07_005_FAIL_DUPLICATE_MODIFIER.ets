/**
 * @id CLS_09_07_005_FAIL_DUPLICATE_MODIFIER
 * @expect compile-fail
 * @section 9.7
 * @design 方法修饰符重复出现 — spec: "Method modifier appears more than once"
 * @note 反向用例：同一声明重复修饰符应编译失败
 */
abstract class Bad005 {
  abstract abstract foo(): void
}
