/**
 * @id CLS_09_09_008_FAIL_CONSTRUCTOR_RECURSIVE
 * @expect compile-fail
 * @section 9.9.1
 * @design 构造器不能直接或间接调用自身 — spec: "constructor calls itself, directly or indirectly"
 * @note 反向用例：辅助构造器通过this()直接递归调用自身应编译失败
 */
class Recursive008 {
  x: int = 0
  constructor(v: int) {
    this.x = v
  }
  constructor(a: int, b: int) {
    this(a + b, 0)
  }
}
